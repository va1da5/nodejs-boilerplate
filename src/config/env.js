import { env } from 'process'

export default {
  NODE_ENV: env.NODE_ENV || 'development',
  MSG: env.MSG || 'Hello, World!',
}
