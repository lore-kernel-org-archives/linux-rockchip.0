From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
Date: Tue, 21 Apr 2020 10:52:33 -0300
Message-ID: <93a4663d03046abd984382f898de15ad2a97cd4e.camel@collabora.com>
References: <20200326191343.1989-1-ezequiel@collabora.com>
         <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
         <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
         <30717aac-f589-ffbd-aefb-07c2934f7a2e@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <30717aac-f589-ffbd-aefb-07c2934f7a2e@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2020-04-21 at 15:44 +0200, Hans Verkuil wrote:
> On 21/04/2020 15:19, Johan Jonker wrote:
> > Hi,
> > 
> > Question for the media maintainers Hans & Co. :
> > 
> > What's nxp,imx8mq-vpu.yaml doing under rga?
> > Why is rockchip-vpu.yaml inserted under rga instead of vpu?
> 
> That's clearly wrong. Probably my fault when trying to resolve
> a conflict.
> 
> Ezequiel, can you make a patch fixing this? It's probably a good
> idea if you double-check these entries to make sure I didn't inadvertently
> introduce more mistakes.
> 

Sure, no worries.

Ezequiel
