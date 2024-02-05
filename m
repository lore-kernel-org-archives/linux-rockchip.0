Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB07C48291
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Feb 2024 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILQNXlySJvk1A5PzfhcgtxMernHejKv5vAYkprpEsjg=; b=2Sm7rm25a5lomM
	i5cHqqiZde005YzqnqnN7+DWrbd0xk2y7aEHZuKhlMJ0jjuVDzfNWHtaz9emAEKlCH6BEKHHo47f8
	vP2eZflN9izF4giKn8JKxQA1QRNiA2/NG5qFYjcciWPd9V4b0J9lLHzybWO1XzswH5Ag065YT1XZd
	h7NJnMPugYUabzvRhd1NIkKZZ/T4VOW7GftD1KT+/MpTHBtpy4LT5ZCL8L6si3GM60b509QncEVMf
	A8Nr286YX0LGr6px19lUNYSMppciOPg1Qn2iKgkEzpgecqTq9/3G9D075V15z3uFddkAnxquoSFHy
	r4X6WHmvD8lcFm8u82Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwSk-00000002s7W-39yB;
	Mon, 05 Feb 2024 10:44:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwSg-00000002s5P-2NMM;
	Mon, 05 Feb 2024 10:44:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2A71CCE0C7C;
	Mon,  5 Feb 2024 10:44:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F21B2C433F1;
	Mon,  5 Feb 2024 10:44:14 +0000 (UTC)
Message-ID: <e565f8bd-19d2-4574-8c6d-5573733a8185@xs4all.nl>
Date: Mon, 5 Feb 2024 11:44:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/17] linux: v4l2-vp9.h: Fix kerneldoc
Content-Language: en-US, nl
To: Randy Dunlap <rdunlap@infradead.org>,
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
 <8f3bab1f-8697-40c0-91f2-de934b4b9ddb@infradead.org>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <8f3bab1f-8697-40c0-91f2-de934b4b9ddb@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_024427_000726_441575BE 
X-CRM114-Status: GOOD (  15.29  )
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

On 05/02/2024 11:39, Randy Dunlap wrote:
> 
> 
> On 2/5/24 02:29, Hans Verkuil wrote:
>> On 27/01/2024 10:57, Sakari Ailus wrote:
>>> Hi Ricardo,
>>>
>>> On Fri, Jan 26, 2024 at 11:16:16PM +0000, Ricardo Ribalda wrote:
>>>> Kerneldoc cannot understand arrays defined like
>>>> v4l2_frame_symbol_counts.
>>>>
>>>> Adding an asterisk to the name does do the trick.
>>>>
>>>> Disable the kerneldoc notation for now, it is already ignored:
>>>> https://docs.kernel.org/search.html?q=v4l2_vp9_frame_symbol_counts
>>>
>>> Wouldn't it be nicer to fix kerneldoc instead? It might not be difficult at
>>> all.
>>>
>>> Feel free to, but I can also give it a try.
>>>
>>
>> It would be nice to have this fixed in kerneldoc itself. I'm holding this
>> patch back for two weeks to see if someone wants to work on kerneldoc.
>>
>> If not, then I'll take this anyway to fix the noise in our build.
>>
>> Note that while this header is indeed ignored in the documentation, that
>> is really more a bug and it would be nice to actually include this header
>> somewhere in our documentation. So fixing these kerneldoc warnings one way
>> or another is something that we should do.
>>
> 
> It's just waiting for Jon to apply it: (from Sakari)
> 
> https://lore.kernel.org/all/20240131084934.191226-1-sakari.ailus@linux.intel.com/

Ah, that patch was CCed to me but not to linux-media, and I only searched linux-media
for it so I missed it. Good news that this is fixed in the right place.

I marked this 17/17 patch as Obsoleted in patchwork.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
