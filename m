From: Niklas =?iso-8859-1?Q?S=F6derlund?=
        <niklas.soderlund@ragnatech.se>
Subject: Re: [PATCH v2 0/3] media: add v4l2_pipeline_stream_{enable,disable}
 helpers
Date: Wed, 8 Apr 2020 02:15:28 +0200
Message-ID: <20200408001528.GI1716317@oden.dyn.berto.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200407193615.GG1716317@oden.dyn.berto.se>
 <4be824ea-61e2-4624-4880-fccb4ff804cd@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4be824ea-61e2-4624-4880-fccb4ff804cd@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com, skhan@linuxfoundation.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen,

Thanks for your reply.

On 2020-04-07 21:05:03 -0300, Helen Koike wrote:
> No, this patch only removes the requirement of patch 1/3 in the series
> "vimc: Allow multiple capture devices to use the same sensor", since the counter
> is being added in the core, so it won't be required to add it for each subdevice.
> The other patches in that series are still required.

OK, just checking. One step in the that direction at least :-)

-- 
Regards,
Niklas Söderlund
