From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/3] media: staging: rkisp1: various bug fixes in params
Date: Thu, 25 Jun 2020 19:42:54 +0200
Message-ID: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

3 bug fixes found in rkisp1-params.c related to managing the vb2 buffers.

Testing:
--------

A test that streams the selfpath and params entities simultaneously
can be found in this branch of v4l-utils:
https://gitlab.collabora.com/dafna/v4l-utils/-/tree/params-bug-fixes

In the repo:
$ cd contrib/test
$ python3 test-rkisp1.py -t RKISP1_TEST_simple_stream_with_params -o /root -S -v --params-buf params-buf.dat

Dafna Hirschfeld (3):
  media: staging: rkisp1: params: don't reference the vb2 buffer after
    calling vb2_buffer_done
  media: staging: rkisp1: params: don't release lock in isr before
    buffer is done
  media: staging: rkisp1: params: in 'stop_streaming' don't release the
    lock while returning buffers

 drivers/staging/media/rkisp1/rkisp1-params.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

-- 
2.17.1
