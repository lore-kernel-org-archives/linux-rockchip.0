From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RESEND PATCH v3 0/6] media: staging: rkisp1: bugs fixes and vars
 renames
Date: Fri, 12 Jun 2020 16:31:35 +0200
Message-ID: <2f0f7297-6067-9af0-c544-fc7defad943d@xs4all.nl>
References: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

(dropped the CC to stable)

Dafna,

Can you repost this an another RESEND, but without the CC to stable?

That will make it easier to review otherwise any reply would go to stable
as well and just annoy Greg :-)

If you need patches to go to stable, then add a Cc: line to stable after your
Signed-off-by tag. When the patch is merged into the mainline kernel it will
be automatically Cc-ed to stable.

Regards,

	Hans

On 11/06/2020 17:45, Dafna Hirschfeld wrote:
> RESEND the patchset because I forgot to add the first two patches
> to the set
> 
> The first two patches in this patchset are two bug fixes related to the enumeration and
> settings of the sink format of the resizer entity.
> The next 3 patches are renaming/removing macros and variables.
> patch 6 adds documentation to the struct rkisp1_isp_mbus_info
> 
> changes from v2:
> - patch 3 is new - remove macro RKISP1_DIR_SINK_SRC since the code is more readable without it.
> - patch 5 - rename 'direction' to 'isp_pads_mask' instead of 'isp_pads_flags'
> - patch 6 is new - add documentation of the struct 'rkisp1_isp_mbus_info'
> 
> changes from v1:
> - added "Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> to the commit log of the first two patches.
> - added two patches. One patch rename the macros "RKISP1_DIR_*"
> to "RKISP1_ISP_SD_*", another that rename the field 'direction'
> in 'struct rkisp1_isp_mbus_info' to 'isp_pads_flags'
> 
> Dafna Hirschfeld (6):
>   media: staging: rkisp1: rsz: supported formats are the isp's src
>     formats, not sink formats
>   media: staging: rkisp1: rsz: set default format if the given format is
>     not RKISP1_DIR_SRC
>   media: staging: rkisp1: remove macro RKISP1_DIR_SINK_SRC
>   media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
>     'RKISP1_ISP_SD_*'
>   media: staging: rkisp1: rename the field 'direction' in
>     'rkisp1_isp_mbus_info' to 'isp_pads_mask'
>   media: staging: rkisp1: common: add documentation for struct
>     rkisp1_isp_mbus_info
> 
>  drivers/staging/media/rkisp1/rkisp1-common.h  | 18 ++++++-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 50 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  6 +--
>  3 files changed, 43 insertions(+), 31 deletions(-)
> 
