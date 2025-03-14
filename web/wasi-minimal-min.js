// wasi_snapshot_preview1 minimal
// Modified from source https://raw.githubusercontent.com/caspervonb/deno-wasi/refs/heads/master/mod.ts
// No preopens option or filesystem access expected
// this.fds[fd].handle is currently "node:fs" module passed to constructor
// to read stdin, write to stdout, stderr with readSync(fd), writeSync(fd)
import process from "node:process";
const CLOCKID_REALTIME = 0;
const CLOCKID_MONOTONIC = 1;
const CLOCKID_PROCESS_CPUTIME_ID = 2;
const CLOCKID_THREAD_CPUTIME_ID = 3;
const ERRNO_SUCCESS = 0;
const ERRNO_2BIG = 1;
const ERRNO_ACCES = 2;
const ERRNO_ADDRINUSE = 3;
const ERRNO_ADDRNOTAVAIL = 4;
const ERRNO_AFNOSUPPORT = 5;
const ERRNO_AGAIN = 6;
const ERRNO_ALREADY = 7;
const ERRNO_BADF = 8;
const ERRNO_BADMSG = 9;
const ERRNO_BUSY = 10;
const ERRNO_CANCELED = 11;
const ERRNO_CHILD = 12;
const ERRNO_CONNABORTED = 13;
const ERRNO_CONNREFUSED = 14;
const ERRNO_CONNRESET = 15;
const ERRNO_DEADLK = 16;
const ERRNO_DESTADDRREQ = 17;
const ERRNO_DOM = 18;
const ERRNO_DQUOT = 19;
const ERRNO_EXIST = 20;
const ERRNO_FAULT = 21;
const ERRNO_FBIG = 22;
const ERRNO_HOSTUNREACH = 23;
const ERRNO_IDRM = 24;
const ERRNO_ILSEQ = 25;
const ERRNO_INPROGRESS = 26;
const ERRNO_INTR = 27;
const ERRNO_INVAL = 28;
const ERRNO_IO = 29;
const ERRNO_ISCONN = 30;
const ERRNO_ISDIR = 31;
const ERRNO_LOOP = 32;
const ERRNO_MFILE = 33;
const ERRNO_MLINK = 34;
const ERRNO_MSGSIZE = 35;
const ERRNO_MULTIHOP = 36;
const ERRNO_NAMETOOLONG = 37;
const ERRNO_NETDOWN = 38;
const ERRNO_NETRESET = 39;
const ERRNO_NETUNREACH = 40;
const ERRNO_NFILE = 41;
const ERRNO_NOBUFS = 42;
const ERRNO_NODEV = 43;
const ERRNO_NOENT = 44;
const ERRNO_NOEXEC = 45;
const ERRNO_NOLCK = 46;
const ERRNO_NOLINK = 47;
const ERRNO_NOMEM = 48;
const ERRNO_NOMSG = 49;
const ERRNO_NOPROTOOPT = 50;
const ERRNO_NOSPC = 51;
const ERRNO_NOSYS = 52;
const ERRNO_NOTCONN = 53;
const ERRNO_NOTDIR = 54;
const ERRNO_NOTEMPTY = 55;
const ERRNO_NOTRECOVERABLE = 56;
const ERRNO_NOTSOCK = 57;
const ERRNO_NOTSUP = 58;
const ERRNO_NOTTY = 59;
const ERRNO_NXIO = 60;
const ERRNO_OVERFLOW = 61;
const ERRNO_OWNERDEAD = 62;
const ERRNO_PERM = 63;
const ERRNO_PIPE = 64;
const ERRNO_PROTO = 65;
const ERRNO_PROTONOSUPPORT = 66;
const ERRNO_PROTOTYPE = 67;
const ERRNO_RANGE = 68;
const ERRNO_ROFS = 69;
const ERRNO_SPIPE = 70;
const ERRNO_SRCH = 71;
const ERRNO_STALE = 72;
const ERRNO_TIMEDOUT = 73;
const ERRNO_TXTBSY = 74;
const ERRNO_XDEV = 75;
const ERRNO_NOTCAPABLE = 76;
const RIGHTS_FD_DATASYNC = 0x0000000000000001n;
const RIGHTS_FD_READ = 0x0000000000000002n;
const RIGHTS_FD_SEEK = 0x0000000000000004n;
const RIGHTS_FD_FDSTAT_SET_FLAGS = 0x0000000000000008n;
const RIGHTS_FD_SYNC = 0x0000000000000010n;
const RIGHTS_FD_TELL = 0x0000000000000020n;
const RIGHTS_FD_WRITE = 0x0000000000000040n;
const RIGHTS_FD_ADVISE = 0x0000000000000080n;
const RIGHTS_FD_ALLOCATE = 0x0000000000000100n;
const RIGHTS_PATH_CREATE_DIRECTORY = 0x0000000000000200n;
const RIGHTS_PATH_CREATE_FILE = 0x0000000000000400n;
const RIGHTS_PATH_LINK_SOURCE = 0x0000000000000800n;
const RIGHTS_PATH_LINK_TARGET = 0x0000000000001000n;
const RIGHTS_PATH_OPEN = 0x0000000000002000n;
const RIGHTS_FD_READDIR = 0x0000000000004000n;
const RIGHTS_PATH_READLINK = 0x0000000000008000n;
const RIGHTS_PATH_RENAME_SOURCE = 0x0000000000010000n;
const RIGHTS_PATH_RENAME_TARGET = 0x0000000000020000n;
const RIGHTS_PATH_FILESTAT_GET = 0x0000000000040000n;
const RIGHTS_PATH_FILESTAT_SET_SIZE = 0x0000000000080000n;
const RIGHTS_PATH_FILESTAT_SET_TIMES = 0x0000000000100000n;
const RIGHTS_FD_FILESTAT_GET = 0x0000000000200000n;
const RIGHTS_FD_FILESTAT_SET_SIZE = 0x0000000000400000n;
const RIGHTS_FD_FILESTAT_SET_TIMES = 0x0000000000800000n;
const RIGHTS_PATH_SYMLINK = 0x0000000001000000n;
const RIGHTS_PATH_REMOVE_DIRECTORY = 0x0000000002000000n;
const RIGHTS_PATH_UNLINK_FILE = 0x0000000004000000n;
const RIGHTS_POLL_FD_READWRITE = 0x0000000008000000n;
const RIGHTS_SOCK_SHUTDOWN = 0x0000000010000000n;
const WHENCE_SET = 0;
const WHENCE_CUR = 1;
const WHENCE_END = 2;
const FILETYPE_UNKNOWN = 0;
const FILETYPE_BLOCK_DEVICE = 1;
const FILETYPE_CHARACTER_DEVICE = 2;
const FILETYPE_DIRECTORY = 3;
const FILETYPE_REGULAR_FILE = 4;
const FILETYPE_SOCKET_DGRAM = 5;
const FILETYPE_SOCKET_STREAM = 6;
const FILETYPE_SYMBOLIC_LINK = 7;
const ADVICE_NORMAL = 0;
const ADVICE_SEQUENTIAL = 1;
const ADVICE_RANDOM = 2;
const ADVICE_WILLNEED = 3;
const ADVICE_DONTNEED = 4;
const ADVICE_NOREUSE = 5;
const FDFLAGS_APPEND = 1;
const FDFLAGS_DSYNC = 2;
const FDFLAGS_NONBLOCK = 4;
const FDFLAGS_RSYNC = 8;
const FDFLAGS_SYNC = 16;
const FSTFLAGS_ATIM = 1;
const FSTFLAGS_ATIM_NOW = 2;
const FSTFLAGS_MTIM = 4;
const FSTFLAGS_MTIM_NOW = 8;
const LOOKUPFLAGS_SYMLINK_FOLLOW = 1;
const OFLAGS_CREAT = 1;
const OFLAGS_DIRECTORY = 2;
const OFLAGS_EXCL = 4;
const OFLAGS_TRUNC = 8;
const EVENTTYPE_CLOCK = 0;
const EVENTTYPE_FD_READ = 1;
const EVENTTYPE_FD_WRITE = 2;
const EVENTRWFLAGS_FD_READWRITE_HANGUP = 1;
const SUBCLOCKFLAGS_SUBSCRIPTION_CLOCK_ABSTIME = 1;
const SIGNAL_NONE = 0;
const SIGNAL_HUP = 1;
const SIGNAL_INT = 2;
const SIGNAL_QUIT = 3;
const SIGNAL_ILL = 4;
const SIGNAL_TRAP = 5;
const SIGNAL_ABRT = 6;
const SIGNAL_BUS = 7;
const SIGNAL_FPE = 8;
const SIGNAL_KILL = 9;
const SIGNAL_USR1 = 10;
const SIGNAL_SEGV = 11;
const SIGNAL_USR2 = 12;
const SIGNAL_PIPE = 13;
const SIGNAL_ALRM = 14;
const SIGNAL_TERM = 15;
const SIGNAL_CHLD = 16;
const SIGNAL_CONT = 17;
const SIGNAL_STOP = 18;
const SIGNAL_TSTP = 19;
const SIGNAL_TTIN = 20;
const SIGNAL_TTOU = 21;
const SIGNAL_URG = 22;
const SIGNAL_XCPU = 23;
const SIGNAL_XFSZ = 24;
const SIGNAL_VTALRM = 25;
const SIGNAL_PROF = 26;
const SIGNAL_WINCH = 27;
const SIGNAL_POLL = 28;
const SIGNAL_PWR = 29;
const SIGNAL_SYS = 30;
const RIFLAGS_RECV_PEEK = 1;
const RIFLAGS_RECV_WAITALL = 2;
const ROFLAGS_RECV_DATA_TRUNCATED = 1;
const SDFLAGS_RD = 1;
const SDFLAGS_WR = 2;
const PREOPENTYPE_DIR = 0;
const clock_res_realtime = function() {
  return BigInt(1e6);
};
const clock_res_monotonic = function() {
  return BigInt(1000);
};
const clock_res_process = clock_res_monotonic;
const clock_res_thread = clock_res_monotonic;
const clock_time_realtime = function() {
  return BigInt(Date.now()) * BigInt(1e6);
};
const clock_time_monotonic = function() {
  const t = performance.now();
  const s = Math.trunc(t);
  const ms = Math.floor((t - s) * 1000);
  return BigInt(s) * BigInt(1e9) + BigInt(ms) * BigInt(1e6);
};
const clock_time_process = clock_time_monotonic;
const clock_time_thread = clock_time_monotonic;
function errno(err) {
  switch (err.name) {
    case "NotFound":
      return ERRNO_NOENT;
    case "PermissionDenied":
      return ERRNO_ACCES;
    case "ConnectionRefused":
      return ERRNO_CONNREFUSED;
    case "ConnectionReset":
      return ERRNO_CONNRESET;
    case "ConnectionAborted":
      return ERRNO_CONNABORTED;
    case "NotConnected":
      return ERRNO_NOTCONN;
    case "AddrInUse":
      return ERRNO_ADDRINUSE;
    case "AddrNotAvailable":
      return ERRNO_ADDRNOTAVAIL;
    case "BrokenPipe":
      return ERRNO_PIPE;
    case "InvalidData":
      return ERRNO_INVAL;
    case "TimedOut":
      return ERRNO_TIMEDOUT;
    case "Interrupted":
      return ERRNO_INTR;
    case "BadResource":
      return ERRNO_BADF;
    case "Busy":
      return ERRNO_BUSY;
    default:
      return ERRNO_INVAL;
  }
}

export class Module {
  args;
  env;
  memory;
  fds;
  exports;
  constructor(options) {
    this.args = options.args ? options.args : [];
    this.env = options.env ? options.env : {};
    this.memory = options.memory;
    this.fds = options.fds || [];
    this.exports = {
      args_get: (argv_ptr, argv_buf_ptr) => {
        const args = this.args;
        const text = new TextEncoder;
        const heap = new Uint8Array(this.memory.buffer);
        const view = new DataView(this.memory.buffer);
        for (let arg of args) {
          view.setUint32(argv_ptr, argv_buf_ptr, true);
          argv_ptr += 4;
          const data = text.encode(`${arg}\x00`);
          heap.set(data, argv_buf_ptr);
          argv_buf_ptr += data.length;
        }
        return ERRNO_SUCCESS;
      },
      args_sizes_get: (argc_out, argv_buf_size_out) => {
        const args = this.args;
        const text = new TextEncoder;
        const view = new DataView(this.memory.buffer);
        view.setUint32(argc_out, args.length, true);
        view.setUint32(argv_buf_size_out, args.reduce(function(acc, arg) {
          return acc + text.encode(`${arg}\x00`).length;
        }, 0), true);
        return ERRNO_SUCCESS;
      },
      environ_get: (environ_ptr, environ_buf_ptr) => {
        const entries = Object.entries(this.env);
        const text = new TextEncoder;
        const heap = new Uint8Array(this.memory.buffer);
        const view = new DataView(this.memory.buffer);
        for (let [key, value] of entries) {
          view.setUint32(environ_ptr, environ_buf_ptr, true);
          environ_ptr += 4;
          const data = text.encode(`${key}=${value}\x00`);
          heap.set(data, environ_buf_ptr);
          environ_buf_ptr += data.length;
        }
        return ERRNO_SUCCESS;
      },
      environ_sizes_get: (environc_out, environ_buf_size_out) => {
        const entries = Object.entries(this.env);
        const text = new TextEncoder;
        const view = new DataView(this.memory.buffer);
        view.setUint32(environc_out, entries.length, true);
        view.setUint32(environ_buf_size_out, entries.reduce(function(acc, [key, value]) {
          return acc + text.encode(`${key}=${value}\x00`).length;
        }, 0), true);
        return ERRNO_SUCCESS;
      },
      clock_res_get: (id, resolution_out) => {
        const view = new DataView(this.memory.buffer);
        switch (id) {
          case CLOCKID_REALTIME:
            view.setBigUint64(resolution_out, clock_res_realtime(), true);
            break;
          case CLOCKID_MONOTONIC:
            view.setBigUint64(resolution_out, clock_res_monotonic(), true);
            break;
          case CLOCKID_PROCESS_CPUTIME_ID:
            view.setBigUint64(resolution_out, clock_res_process(), true);
            break;
          case CLOCKID_THREAD_CPUTIME_ID:
            view.setBigUint64(resolution_out, clock_res_thread(), true);
            break;
          default:
            return ERRNO_INVAL;
        }
        return ERRNO_SUCCESS;
      },
      clock_time_get: (id, precision, time_out) => {
        const view = new DataView(this.memory.buffer);
        switch (id) {
          case CLOCKID_REALTIME:
            view.setBigUint64(time_out, clock_time_realtime(), true);
            break;
          case CLOCKID_MONOTONIC:
            view.setBigUint64(time_out, clock_time_monotonic(), true);
            break;
          case CLOCKID_PROCESS_CPUTIME_ID:
            view.setBigUint64(time_out, clock_time_process(), true);
            break;
          case CLOCKID_THREAD_CPUTIME_ID:
            view.setBigUint64(time_out, clock_time_thread(), true);
            break;
          default:
            return ERRNO_INVAL;
        }
        return ERRNO_SUCCESS;
      },
      fd_close: (fd) => {
        const entry = this.fds[fd];
        if (!entry) {
          return ERRNO_BADF;
        }
        entry.handle.close(fd);
        delete this.fds[fd];
        return ERRNO_SUCCESS;
      },
      fd_fdstat_get: (fd, stat_out) => {
        const entry = this.fds[fd];
        if (!entry) {
          return ERRNO_BADF;
        }
        const view = new DataView(this.memory.buffer);
        view.setUint8(stat_out, entry.type);
        view.setUint16(stat_out + 4, 0, true);
        view.setBigUint64(stat_out + 8, 0n, true);
        view.setBigUint64(stat_out + 16, 0n, true);
        return ERRNO_SUCCESS;
      },
      fd_read: (fd, iovs_ptr, iovs_len, nread_out) => {
        const entry = this.fds[fd];
        if (!entry) {
          return ERRNO_BADF;
        }
        const view = new DataView(this.memory.buffer);
        let nread = 0;
        for (let i = 0;i < iovs_len; i++) {
          const data_ptr = view.getUint32(iovs_ptr, true);
          iovs_ptr += 4;
          const data_len = view.getUint32(iovs_ptr, true);
          iovs_ptr += 4;
          const data = new Uint8Array(this.memory.buffer, data_ptr, data_len);
          nread += entry.handle.readSync(fd, data);
        }
        view.setUint32(nread_out, nread, true);
        return ERRNO_SUCCESS;
      },
      fd_seek: (fd, offset, whence, newoffset_out) => {
        const entry = this.fds[fd];
        if (!entry) {
          return ERRNO_BADF;
        }
        const view = new DataView(this.memory.buffer);
        try {
          const newoffset = entry.handle.seekSync(Number(offset), whence);
          view.setBigUint64(newoffset_out, BigInt(newoffset), true);
        } catch (err) {
          return ERRNO_INVAL;
        }
        return ERRNO_SUCCESS;
      },
      fd_write: (fd, iovs_ptr, iovs_len, nwritten_out) => {
        const entry = this.fds[fd];
        if (!entry) {
          return ERRNO_BADF;
        }
        const view = new DataView(this.memory.buffer);
        let nwritten = 0;
        for (let i = 0;i < iovs_len; i++) {
          const data_ptr = view.getUint32(iovs_ptr, true);
          iovs_ptr += 4;
          const data_len = view.getUint32(iovs_ptr, true);
          iovs_ptr += 4;
          nwritten += entry.handle.writeSync(fd, new Uint8Array(this.memory.buffer, data_ptr, data_len));
        }
        view.setUint32(nwritten_out, nwritten, true);
        return ERRNO_SUCCESS;
      },
      proc_exit: (rval) => {
        process.exit(rval);
      },
      random_get: (buf_ptr, buf_len) => {
        const buffer = new Uint8Array(this.memory.buffer, buf_ptr, buf_len);
        crypto.getRandomValues(buffer);
        return ERRNO_SUCCESS;
      }
    };
  }
}
export default Module;
