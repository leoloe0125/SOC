#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_inStreamTop_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStreamTop_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_inStreamTop_V_data_V.dat");
unsigned int ap_apatb_inStreamTop_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStreamTop_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_inStreamTop_V_keep_V.dat");
unsigned int ap_apatb_inStreamTop_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStreamTop_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_inStreamTop_V_strb_V.dat");
unsigned int ap_apatb_inStreamTop_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStreamTop_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_inStreamTop_V_user_V.dat");
unsigned int ap_apatb_inStreamTop_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_inStreamTop_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_inStreamTop_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_outStreamTop_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStreamTop_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_outStreamTop_V_data_V.dat");
unsigned int ap_apatb_outStreamTop_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStreamTop_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_outStreamTop_V_keep_V.dat");
unsigned int ap_apatb_outStreamTop_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStreamTop_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_outStreamTop_V_strb_V.dat");
unsigned int ap_apatb_outStreamTop_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStreamTop_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_outStreamTop_V_user_V.dat");
unsigned int ap_apatb_outStreamTop_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_outStreamTop_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_outStreamTop_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
struct __cosim_s4__ { char data[4]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void userdma(int*, int*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, , , volatile void *, char, __cosim_s4__, __cosim_s1__, int, volatile void *, __cosim_s4__, int, volatile void *, char, int, __cosim_s1__, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, , );
extern "C" void apatb_userdma_hw(volatile void * __xlx_apatb_param_inStreamTop_V_data_V, volatile void * __xlx_apatb_param_inStreamTop_V_keep_V, volatile void * __xlx_apatb_param_inStreamTop_V_strb_V, volatile void * __xlx_apatb_param_inStreamTop_V_user_V, volatile void * __xlx_apatb_param_inStreamTop_V_last_V, volatile void * __xlx_apatb_param_s2m_buf_sts, char __xlx_apatb_param_s2m_sts_clear, __cosim_s4__* __xlx_apatb_param_s2m_len, __cosim_s1__* __xlx_apatb_param_s2m_enb_clrsts, volatile void * __xlx_apatb_param_s2mbuf, volatile void * __xlx_apatb_param_s2m_err, __cosim_s4__* __xlx_apatb_param_Img_width, volatile void * __xlx_apatb_param_m2sbuf, volatile void * __xlx_apatb_param_m2s_buf_sts, char __xlx_apatb_param_m2s_sts_clear, int __xlx_apatb_param_m2s_len, __cosim_s1__* __xlx_apatb_param_m2s_enb_clrsts, volatile void * __xlx_apatb_param_outStreamTop_V_data_V, volatile void * __xlx_apatb_param_outStreamTop_V_keep_V, volatile void * __xlx_apatb_param_outStreamTop_V_strb_V, volatile void * __xlx_apatb_param_outStreamTop_V_user_V, volatile void * __xlx_apatb_param_outStreamTop_V_last_V) {
  // Collect __xlx_s2mbuf__tmp_vec
  vector<sc_bv<32> >__xlx_s2mbuf__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_s2mbuf)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_s2mbuf)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_s2mbuf)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_s2mbuf)[j*4+3];
    __xlx_s2mbuf__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_s2mbuf = 64;
  int __xlx_offset_param_s2mbuf = 0;
  int __xlx_offset_byte_param_s2mbuf = 0*4;
  int* __xlx_s2mbuf__input_buffer= new int[__xlx_s2mbuf__tmp_vec.size()];
  for (int i = 0; i < __xlx_s2mbuf__tmp_vec.size(); ++i) {
    __xlx_s2mbuf__input_buffer[i] = __xlx_s2mbuf__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_m2sbuf__tmp_vec
  vector<sc_bv<32> >__xlx_m2sbuf__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_m2sbuf)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_m2sbuf)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_m2sbuf)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_m2sbuf)[j*4+3];
    __xlx_m2sbuf__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_m2sbuf = 64;
  int __xlx_offset_param_m2sbuf = 0;
  int __xlx_offset_byte_param_m2sbuf = 0*4;
  int* __xlx_m2sbuf__input_buffer= new int[__xlx_m2sbuf__tmp_vec.size()];
  for (int i = 0; i < __xlx_m2sbuf__tmp_vec.size(); ++i) {
    __xlx_m2sbuf__input_buffer[i] = __xlx_m2sbuf__tmp_vec[i].range(31, 0).to_uint64();
  }
  // collect __xlx_inStreamTop_V_data_V_tmp_vec
  unsigned __xlx_inStreamTop_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_inStreamTop_V_data_V_V_read_Size = __xlx_inStreamTop_V_data_V_V_size_Reader.read_size();
  vector<int> __xlx_inStreamTop_V_data_V_tmp_vec;
  while (!((hls::stream<int>*)__xlx_apatb_param_inStreamTop_V_data_V)->empty() && __xlx_inStreamTop_V_data_V_V_tmp_Count < __xlx_inStreamTop_V_data_V_V_read_Size) {
    __xlx_inStreamTop_V_data_V_tmp_vec.push_back(((hls::stream<int>*)__xlx_apatb_param_inStreamTop_V_data_V)->read());
    __xlx_inStreamTop_V_data_V_V_tmp_Count++;
  }
  ap_apatb_inStreamTop_V_data_V_cap_bc = __xlx_inStreamTop_V_data_V_tmp_vec.size();
  // store input buffer
  int* __xlx_inStreamTop_V_data_V_input_buffer= new int[__xlx_inStreamTop_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStreamTop_V_data_V_tmp_vec.size(); ++i) {
    __xlx_inStreamTop_V_data_V_input_buffer[i] = __xlx_inStreamTop_V_data_V_tmp_vec[i];
  }
  // collect __xlx_inStreamTop_V_keep_V_tmp_vec
  unsigned __xlx_inStreamTop_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_inStreamTop_V_keep_V_V_read_Size = __xlx_inStreamTop_V_keep_V_V_size_Reader.read_size();
  vector<char> __xlx_inStreamTop_V_keep_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_keep_V)->empty() && __xlx_inStreamTop_V_keep_V_V_tmp_Count < __xlx_inStreamTop_V_keep_V_V_read_Size) {
    __xlx_inStreamTop_V_keep_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_keep_V)->read());
    __xlx_inStreamTop_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_inStreamTop_V_keep_V_cap_bc = __xlx_inStreamTop_V_keep_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStreamTop_V_keep_V_input_buffer= new char[__xlx_inStreamTop_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStreamTop_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_inStreamTop_V_keep_V_input_buffer[i] = __xlx_inStreamTop_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_inStreamTop_V_strb_V_tmp_vec
  unsigned __xlx_inStreamTop_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_inStreamTop_V_strb_V_V_read_Size = __xlx_inStreamTop_V_strb_V_V_size_Reader.read_size();
  vector<char> __xlx_inStreamTop_V_strb_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_strb_V)->empty() && __xlx_inStreamTop_V_strb_V_V_tmp_Count < __xlx_inStreamTop_V_strb_V_V_read_Size) {
    __xlx_inStreamTop_V_strb_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_strb_V)->read());
    __xlx_inStreamTop_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_inStreamTop_V_strb_V_cap_bc = __xlx_inStreamTop_V_strb_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStreamTop_V_strb_V_input_buffer= new char[__xlx_inStreamTop_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStreamTop_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_inStreamTop_V_strb_V_input_buffer[i] = __xlx_inStreamTop_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_inStreamTop_V_user_V_tmp_vec
  unsigned __xlx_inStreamTop_V_user_V_V_tmp_Count = 0;
  unsigned __xlx_inStreamTop_V_user_V_V_read_Size = __xlx_inStreamTop_V_user_V_V_size_Reader.read_size();
  vector<char> __xlx_inStreamTop_V_user_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_user_V)->empty() && __xlx_inStreamTop_V_user_V_V_tmp_Count < __xlx_inStreamTop_V_user_V_V_read_Size) {
    __xlx_inStreamTop_V_user_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_user_V)->read());
    __xlx_inStreamTop_V_user_V_V_tmp_Count++;
  }
  ap_apatb_inStreamTop_V_user_V_cap_bc = __xlx_inStreamTop_V_user_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStreamTop_V_user_V_input_buffer= new char[__xlx_inStreamTop_V_user_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStreamTop_V_user_V_tmp_vec.size(); ++i) {
    __xlx_inStreamTop_V_user_V_input_buffer[i] = __xlx_inStreamTop_V_user_V_tmp_vec[i];
  }
  // collect __xlx_inStreamTop_V_last_V_tmp_vec
  unsigned __xlx_inStreamTop_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_inStreamTop_V_last_V_V_read_Size = __xlx_inStreamTop_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_inStreamTop_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_last_V)->empty() && __xlx_inStreamTop_V_last_V_V_tmp_Count < __xlx_inStreamTop_V_last_V_V_read_Size) {
    __xlx_inStreamTop_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_inStreamTop_V_last_V)->read());
    __xlx_inStreamTop_V_last_V_V_tmp_Count++;
  }
  ap_apatb_inStreamTop_V_last_V_cap_bc = __xlx_inStreamTop_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_inStreamTop_V_last_V_input_buffer= new char[__xlx_inStreamTop_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_inStreamTop_V_last_V_tmp_vec.size(); ++i) {
    __xlx_inStreamTop_V_last_V_input_buffer[i] = __xlx_inStreamTop_V_last_V_tmp_vec[i];
  }
  //Create input buffer for outStreamTop_V_data_V
  ap_apatb_outStreamTop_V_data_V_cap_bc = __xlx_outStreamTop_V_data_V_V_size_Reader.read_size();
  int* __xlx_outStreamTop_V_data_V_input_buffer= new int[ap_apatb_outStreamTop_V_data_V_cap_bc];
  //Create input buffer for outStreamTop_V_keep_V
  ap_apatb_outStreamTop_V_keep_V_cap_bc = __xlx_outStreamTop_V_keep_V_V_size_Reader.read_size();
  char* __xlx_outStreamTop_V_keep_V_input_buffer= new char[ap_apatb_outStreamTop_V_keep_V_cap_bc];
  //Create input buffer for outStreamTop_V_strb_V
  ap_apatb_outStreamTop_V_strb_V_cap_bc = __xlx_outStreamTop_V_strb_V_V_size_Reader.read_size();
  char* __xlx_outStreamTop_V_strb_V_input_buffer= new char[ap_apatb_outStreamTop_V_strb_V_cap_bc];
  //Create input buffer for outStreamTop_V_user_V
  ap_apatb_outStreamTop_V_user_V_cap_bc = __xlx_outStreamTop_V_user_V_V_size_Reader.read_size();
  char* __xlx_outStreamTop_V_user_V_input_buffer= new char[ap_apatb_outStreamTop_V_user_V_cap_bc];
  //Create input buffer for outStreamTop_V_last_V
  ap_apatb_outStreamTop_V_last_V_cap_bc = __xlx_outStreamTop_V_last_V_V_size_Reader.read_size();
  char* __xlx_outStreamTop_V_last_V_input_buffer= new char[ap_apatb_outStreamTop_V_last_V_cap_bc];
  // DUT call
  userdma(__xlx_s2mbuf__input_buffer, __xlx_m2sbuf__input_buffer, __xlx_inStreamTop_V_data_V_input_buffer, __xlx_inStreamTop_V_keep_V_input_buffer, __xlx_inStreamTop_V_strb_V_input_buffer, __xlx_inStreamTop_V_user_V_input_buffer, __xlx_inStreamTop_V_last_V_input_buffer, __xlx_apatb_param_s2m_buf_sts, __xlx_apatb_param_s2m_sts_clear, *__xlx_apatb_param_s2m_len, *__xlx_apatb_param_s2m_enb_clrsts, __xlx_offset_byte_param_s2mbuf, __xlx_apatb_param_s2m_err, *__xlx_apatb_param_Img_width, __xlx_offset_byte_param_m2sbuf, __xlx_apatb_param_m2s_buf_sts, __xlx_apatb_param_m2s_sts_clear, __xlx_apatb_param_m2s_len, *__xlx_apatb_param_m2s_enb_clrsts, __xlx_outStreamTop_V_data_V_input_buffer, __xlx_outStreamTop_V_keep_V_input_buffer, __xlx_outStreamTop_V_strb_V_input_buffer, __xlx_outStreamTop_V_user_V_input_buffer, __xlx_outStreamTop_V_last_V_input_buffer);
// print __xlx_apatb_param_s2mbuf
  sc_bv<32>*__xlx_s2mbuf_output_buffer = new sc_bv<32>[__xlx_size_param_s2mbuf];
  for (int i = 0; i < __xlx_size_param_s2mbuf; ++i) {
    __xlx_s2mbuf_output_buffer[i] = __xlx_s2mbuf__input_buffer[i+__xlx_offset_param_s2mbuf];
  }
  for (int i = 0; i < __xlx_size_param_s2mbuf; ++i) {
    ((char*)__xlx_apatb_param_s2mbuf)[i*4+0] = __xlx_s2mbuf_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_s2mbuf)[i*4+1] = __xlx_s2mbuf_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_s2mbuf)[i*4+2] = __xlx_s2mbuf_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_s2mbuf)[i*4+3] = __xlx_s2mbuf_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_m2sbuf
  sc_bv<32>*__xlx_m2sbuf_output_buffer = new sc_bv<32>[__xlx_size_param_m2sbuf];
  for (int i = 0; i < __xlx_size_param_m2sbuf; ++i) {
    __xlx_m2sbuf_output_buffer[i] = __xlx_m2sbuf__input_buffer[i+__xlx_offset_param_m2sbuf];
  }
  for (int i = 0; i < __xlx_size_param_m2sbuf; ++i) {
    ((char*)__xlx_apatb_param_m2sbuf)[i*4+0] = __xlx_m2sbuf_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_m2sbuf)[i*4+1] = __xlx_m2sbuf_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_m2sbuf)[i*4+2] = __xlx_m2sbuf_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_m2sbuf)[i*4+3] = __xlx_m2sbuf_output_buffer[i].range(31, 24).to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_outStreamTop_V_data_V_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_outStreamTop_V_data_V)->write(__xlx_outStreamTop_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStreamTop_V_keep_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStreamTop_V_keep_V)->write(__xlx_outStreamTop_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStreamTop_V_strb_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStreamTop_V_strb_V)->write(__xlx_outStreamTop_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStreamTop_V_user_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStreamTop_V_user_V)->write(__xlx_outStreamTop_V_user_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_outStreamTop_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_outStreamTop_V_last_V)->write(__xlx_outStreamTop_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
}
