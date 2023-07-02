Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E803EB64DD
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jul 2023 09:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UzW5C0wHH9WAO2SBQ6JGJbriOAmXXledWAVF+gEST4=; b=jnf5DhmQ3sXQ6N
	jvJf0UYiLR7tfju/HivyLIIIM9aDNAYMhfkFY8px/cwrGFJ8+E+0R0GvDEQNPoFfPhFDz2I30SJeP
	zDh0t8d0nZEUGDruqGOvu1YPPdEqh/DWGv7bjLhmVUS0QMXwFbEvhLvnC70UnNWQwjIu1kU9yhIRz
	GRSE8ZSRC/RNdBk6O6oCsHgAEZ3xa7bIRbpWtfiYRA/w2xx1/PBXOweLJhWSuytoxZ/qudcZRgTE3
	Tg9go1wmVjy8tzYVGFoiF8dKSkl6IqUb1/Hnz5aPoUYnSsjH9Cltv+0c8/bB2/p+XwhIoCeNmjvdE
	DMs780pYjr939pPKRtcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFtSY-007UXu-1P;
	Sun, 02 Jul 2023 09:33:34 +0000
Received: from mout.web.de ([212.227.15.3])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFtSS-007UX9-1i;
	Sun, 02 Jul 2023 09:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=s29768273; t=1688290394; x=1688895194; i=markus.elfring@web.de;
 bh=KtM1yynOXKi5MELLt3Cy1zi+RmzUYWERVvdzTVURPJM=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:In-Reply-To;
 b=BLpSiV+mg6I36X7mSp1Bm09KdUEKjs+9PAH7WOXfOpNHIjDMpk5WQlqEB3I6JohIGTwMRti
 yhqL/KymxMURgT+iS/Sb7O2KsUCUze4/YQG+z9fPqDUTHYtrPRSkMOXR7aPJWK3Xn0Tw09ZWa
 xGLJPxj9VpzlD1/a6sE3pfQp83/iYCOFlMKlxWxNe9JVr/zpu+2dj/rFAsQoKD7jq2Fk1xQiM
 MFgttEdfGaf+FU6KMEJXlvGGDX0348MWkzDyHaBm86wbPvE+d03nQsi8hDRPOlHq5+EgpXDSC
 DdoIfXhZITzG1FWPhqZYj3MrIc+u5HW2wK82dp4MwCZiotEODN8w==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.83]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M2ggd-1qJTYU3glT-004Jds; Sun, 02
 Jul 2023 11:33:13 +0200
Message-ID: <1475d01a-2d34-72ef-56f8-87e04be057c8@web.de>
Date: Sun, 2 Jul 2023 11:33:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-staging@lists.linux.dev, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel-janitors@vger.kernel.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Ming Qian <ming.qian@nxp.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tomasz Figa <tfiga@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel@collabora.com
References: <20230622131349.144160-10-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 09/11] media: verisilicon: vp9: Allow to change
 resolution while streaming
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20230622131349.144160-10-benjamin.gaignard@collabora.com>
X-Provags-ID: V03:K1:mzJYK/cOYyX2bS8BVlfXIGvxIEfbahz/ax2yQyUy/F0Yl2qFJme
 8KUy19HBBAN+3VidonlJw71MRrISQAALUetbemKDDl4+nBbMYPVRg/3R68dsMdnE6wYo06f
 Yz1Byoxt2VqZxpfg6kVneklHVZSSG47qZX21uknUOZWEYDgSPpDgP387NcCFyPYosodbZWe
 mCqAYYJupL31czH1IbZLg==
UI-OutboundReport: notjunk:1;M01:P0:TL9t02EPglg=;3/umoIV19ynetyIUxoQZ5sIeVAc
 MpRFtXILC12n/FnO+okIWUVLeYvCpOkqsKcXRz2m7ZEMi1ZsD7NzH3AJtHk42LT2Ktyp9LRM0
 7oBE8NZ4ZCh7Dq+zTw5tfzP1Q6krIKwZJsnPEfglaFFEepZF3VbHsK0S3bl6FEfj1VYgVJpQB
 +tVuyQN2tOM9l/Pig6AnipVy0Pyx6c5oGoTAs7ipJrmZa9qTNVH8vqVmUZejh71yrItYOgBiz
 cHUyQmys27LLQZCWjefbHywlbqfnTOgnCEC9EH+/EEP0+Fw6ju2/9QadioP4m0Rh9CVcvO5kl
 CrI7cxXh3QWw2l2kU3gkbLEy6F0cmxNZ93zcsZHtPIL1KRhytzJVjlfwWO1kjA+AAckH+N8JD
 RyIKLia76111eHiof/TvE/pITUXiMsB5CR7OsJ7ZSVOdGPrtnppK5hw6jVhkpsIQ3hqw9K+/o
 LeiE0ktgdZ9NdQ8T4vvtodyKe9AaOYbX+oRi+8ASFYeKS1zp9+DSpCy0PbTzjS12KTZWSe8B/
 10vtf/mRTJVDnHiEPM1Ud3Dkyf3Q7QLdjeZb0XR8sp6HYdM3OsRE3As5DmWqOkboDaVO5XAIe
 ZzwyymMRqTbhJItOdST2M+pHef/u9jzpdiKDk/z0cwSFWDo3Wom0E/v3n9sixd2hc1ISUTE1C
 OFwkDzYFSYsLKCvY1Z67tE3VxkY43zRNL2HqHIy6Gm8yK95aLqZ36d/RmIWtM+lNQsm9Mz95P
 UMbhMQyAMXFcK8OIlj9h+ymbYHSH2B2CaWvpNoypzJAUOhojX4RM4sIQIFJS2nUD64sS5QPL4
 fQmUYIbWeKDi8VB5NqKTfDBZaB+zNB6X8r03yQv6TJjOyPrE32RXHQOBvx6xz3FdN06q65odB
 GWCc56NPNTDSS3y9hx8FYZ2mtYYs+oy4KctGYXQB7RX9XtmlPPhoF+/ddZklVrN9IF1CFJ1JU
 TqEiPg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_023330_916158_844A90D3 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

4oCmCj4gVGhpcyBhbGxvdyB0byBjaGFuZ2UgZHluYW1pY2FsbHkgdGhlIHJlc29sdXRpb24gaWYg
dGhlIHBpeGVsIGZvcm1hdAo+IHJlbWFpbnMgdGhlIHNhbWUuCgpXb3VsZCB0aGUgd29yZGluZyDi
gJxUaGlzIGFkanVzdG1lbnQgYWxsb3dzIOKApuKAnSBiZSBtb3JlIGFwcHJvcHJpYXRlCmZvciBh
IHN1YnNlcXVlbnQgY2hhbmdlIGRlc2NyaXB0aW9uPwoKUmVnYXJkcywKTWFya3VzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
