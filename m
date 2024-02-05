Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE20C48291
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Feb 2024 10:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Azyu0z82WlR+xQbCOUIWrE0rj0FIzes9I0vxHboCvOk=; b=onH1Kwfu1xO3VH
	aRSzTcr6HiOeKxqH1DjSnQLq92RhPi/k3C2RS83fDuLzyIzENCS4ll1aqMPp5UDcLjBo/bPkDcEwp
	OSi8exiwJnItUsdG/aVm3b4zM1hgMtzXQ5UDoguyMvOsi1sVzDqsznj3EDgm3bUFYThneS4e19cNo
	dY/pLNNfmz7rNn/r4oaZczOevORQV47bmQFriBcmDjLAyP4/q3Tae8UrOqAnG12vEEUI6Iglo6VMZ
	gF7SPLPf+Ix1Lnum9FCyHiVaE4/l/jNt9WQN64qnegmNJrOQYBsDt2Qc9Zh5AobLX+0SbvPAYNzd2
	gHwVeO/eCGl6BKmhFevw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwOT-00000002rL4-0mcQ;
	Mon, 05 Feb 2024 10:40:05 +0000
Received: from [50.53.50.0] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwOJ-00000002rJF-3GlM;
	Mon, 05 Feb 2024 10:39:55 +0000
Message-ID: <8f3bab1f-8697-40c0-91f2-de934b4b9ddb@infradead.org>
Date: Mon, 5 Feb 2024 02:39:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/17] linux: v4l2-vp9.h: Fix kerneldoc
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ricardo Ribalda <ribalda@chromium.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Bin Liu <bin.liu@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-amlogic@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>
References: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
 <20240126-gix-mtk-warnings-v1-17-eed7865fce18@chromium.org>
 <ZbTTb-SdK-EubGdc@valkosipuli.retiisi.eu>
 <201ae1d1-1e03-40e2-9cc4-49df70abb8da@xs4all.nl>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <201ae1d1-1e03-40e2-9cc4-49df70abb8da@xs4all.nl>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 2/5/24 02:29, Hans Verkuil wrote:
> On 27/01/2024 10:57, Sakari Ailus wrote:
>> Hi Ricardo,
>>
>> On Fri, Jan 26, 2024 at 11:16:16PM +0000, Ricardo Ribalda wrote:
>>> Kerneldoc cannot understand arrays defined like
>>> v4l2_frame_symbol_counts.
>>>
>>> Adding an asterisk to the name does do the trick.
>>>
>>> Disable the kerneldoc notation for now, it is already ignored:
>>> https://docs.kernel.org/search.html?q=v4l2_vp9_frame_symbol_counts
>>
>> Wouldn't it be nicer to fix kerneldoc instead? It might not be difficult at
>> all.
>>
>> Feel free to, but I can also give it a try.
>>
> 
> It would be nice to have this fixed in kerneldoc itself. I'm holding this
> patch back for two weeks to see if someone wants to work on kerneldoc.
> 
> If not, then I'll take this anyway to fix the noise in our build.
> 
> Note that while this header is indeed ignored in the documentation, that
> is really more a bug and it would be nice to actually include this header
> somewhere in our documentation. So fixing these kerneldoc warnings one way
> or another is something that we should do.
> 

It's just waiting for Jon to apply it: (from Sakari)

https://lore.kernel.org/all/20240131084934.191226-1-sakari.ailus@linux.intel.com/

Thanks.

-- 
#Randy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
