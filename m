From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 0/2] media: staging: rkisp1: allow simultaneous
 streaming from multiple capture devices
Date: Wed, 10 Jun 2020 16:37:13 +0000
Message-ID: <20200610163713.GA201868@chromium.org>
References: <20200316210044.595312-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200316210044.595312-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: linux-media@vger.kernel.org, mchehab@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 16, 2020 at 06:00:42PM -0300, Helen Koike wrote:
> Hi,
> 
> This series adds support for simultaneous streaming from both capture
> devices (rkisp1_selfpath and rkisp1_mainpath).
> 
> It depends on the following series for multistream to work properly, but
> it doesn't mean it can't be merged before:
> 
> 	"media: add v4l2_pipeline_stream_{enable,disable} helpers"
> 	https://patchwork.linuxtv.org/cover/62233/
> 
> And it is also available at:
> 
> 	https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/multistream
> 
> Patch 1/2 fixes return error handling from pm functions, which was
> preventing the second stream to start.
> 
> Patch 2/2 serializes start/stop streaming calls, since they both
> and modify shared variables.
> 
> Changes in v2:
> - Rebased on media/master
> - Removed the following patch from the series:
> "media: staging: rkisp1: do not call s_stream if the entity is still in use"
> It was replaced by "media: add v4l2_pipeline_stream_{enable,disable} helpers"
> https://patchwork.linuxtv.org/cover/62233/
> 

For the whole series:

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
