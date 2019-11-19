From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for
 rkisp1 meta buffer format
Date: Tue, 19 Nov 2019 09:55:51 -0300
Message-ID: <4135d35cd581b31d08b547852ac43e959957abf5.camel@collabora.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
         <20191114051242.14651-3-helen.koike@collabora.com>
         <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
         <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
         <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jacob Chen <jacobchen110@gmail.com>, Helen Koike <helen.koike@collabora.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, mark.rutland@arm.com, devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Jacob Chen <jacob-chen@rock-chips.com>, gregkh@linuxfoundation.org, Jeffy Chen <jeffy.chen@rock-chips.com>, =?UTF-8?Q?=E9=92=9F=E4=BB=A5=E5=B4=87?= <zyc@rock-chips.com>, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, robh+dt@kernel.org, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Shunqian Zheng <zhengsq@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, Linux
List-Id: linux-rockchip.vger.kernel.org

Hello Jacob,

Thanks for the insight.

On Tue, 2019-11-19 at 18:16 +0800, Jacob Chen wrote:
> Hi Helen ,
> 
> Helen Koike <helen.koike@collabora.com> 于2019年11月14日周四 下午6:59写道：
> > 
> > 
> > On 11/14/19 6:21 AM, Hans Verkuil wrote:
> > > On 11/14/19 6:12 AM, Helen Koike wrote:
> > > > From: Jacob Chen <jacob2.chen@rock-chips.com>
> > > > 
> > > > This commit add document for rkisp1 meta buffer format
> > > > 
> > > > Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> > > > [refactored for upstream]
> > > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > 
> > > checkpatch gives me:
> > > 
> > > WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Chen <jacob2.chen@rock-chips.com>'
> > > 
> > > Looking at this series I see duplicate Signed-off-by entries for Jacob Chen and a total
> > > of three different email addresses:
> > > 
> > > jacob2.chen@rock-chips.com
> > > jacob-chen@rock-chips.com
> > > cc@rock-chips.com
> > 
> > And I see a name in the Maintainers file as Jacob Chen <jacob-chen@iotwrt.com>.
> > I was wondering if I could replace the email by jacob-chen@iotwrt.com, or if I should
> > keep the original ones.
> > 
> > Helen
> > 
> 
> "jacob2.chen@rock-chips.com"/"jacob-chen@rock-chips.com" is me and
> "cc@rock-chips.com" is another one.
> ' jacob-chen@rock-chips.com' is invalid now,  so you could replace the
> email by 'jacob-chen@iotwrt.com'.
> 

Authorship and SOB can't be changed freely, the original must be retained,
because this gives proper credit to the company that sponsored the work.

I.e. if your mail used to be jacob2.chen at rock-chips.com, then I think
we can use that. And if cc at rock-chips.com is a different engineer,
also named Jacob Chen, perhaps we can mention that somewhere to reduce the
confusion.

Thanks,
Ezequiel
