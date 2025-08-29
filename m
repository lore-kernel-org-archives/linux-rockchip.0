Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81526CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 17:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKqBipt1L+J7P49CqB/t0lsEFcEV+FbJxU4Y7QxzqmI=; b=hBuvIsSj1icn1U
	K+I3ESAZa9qollE0gOqCSYh+0kIQuWr2Xu3iNubbNuMG7BwHs5Nj2G2f9DmWoqoRK6I1+CA2QZP/x
	2Tygmm8VfpD8eKGq7bRrRSanT1zXqlzqdGtUo4G3UfrVKZS/r2/RGe4DlxxGz/n1ugfmNYzXoY/bs
	+TjdjvG1E0YrUOqnt8NQqVN5Bep/pfNhNS+Qyo7CFhrPEGXyUqVbzrSC8lDXerPNORjNi1WMWuZMF
	qvIKz7xwWDm0J1T6qFBBQ3breBHgdtZ07xI+Bv4byVIFWMDTLPwcsE+77vbhw/IiQHQIS0znAHPi6
	196+4zz2uTwI1bpDaX6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us2pd-00000006WCH-0e7S;
	Fri, 29 Aug 2025 17:24:09 +0000
Received: from smx-b.mailgw.jp ([210.171.6.216] helo=rmx-b.mailgw.jp)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urybs-00000005iij-1kco;
	Fri, 29 Aug 2025 12:53:42 +0000
Received: from bccml.bai.ne.jp (bccml-a.bai.ne.jp [210.171.3.161])
	by rmx-b.mailgw.jp  with ESMTP id 57TCrNJG016915-57TCrNJH016915;
	Fri, 29 Aug 2025 21:53:23 +0900
Received: from [192.168.11.5] (bai859bcd79.bai.ne.jp [133.155.205.121])
	by bccml.bai.ne.jp (Postfix) with ESMTPA id 79A4881773;
	Fri, 29 Aug 2025 21:53:23 +0900 (JST)
Message-ID: <023eb3ad-0826-42e4-8172-08a26db31676@bcc.bai.ne.jp>
Date: Fri, 29 Aug 2025 21:53:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enables sound output from the
 audio jack on OrangePI5 Plus
To: Maud Spierings <maud_spierings@hotmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, robh@kernel.org
References: <20250826134456.9636-2-opi5plus@bcc.bai.ne.jp>
 <AM7P189MB1009A67370CA029038DF2A69E33BA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
 <0b061e42-0a01-4839-871c-a5d760dbddeb@bcc.bai.ne.jp>
 <AM7P189MB1009CB3632FAAEEE43D9CED5E33AA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Hide Hako <opi5plus@bcc.bai.ne.jp>
In-Reply-To: <AM7P189MB1009CB3632FAAEEE43D9CED5E33AA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
X-FE-Last-Public-Client-IP: 210.171.3.161
X-FE-Policy-ID: 3:1:2:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=bcc.bai.ne.jp; s=20240516; c=relaxed/relaxed;
 h=message-id:date:mime-version:subject:to:cc:references:from:content-type;
 bh=sw/Y+heIE2Vkbrbo96JH8p+ZhrdF9Vqpg0lLY9c5cd8=;
 b=yiDV/oPhM+N3eRfoDyIkF25NIdhLR9RhlFvqCT3kLrNvWAbL9xKedo7hm653n1r8+M8UjIJZvXja
	vW1PIfBcYUWTfnfWPGY1/FPmmfARC3ZBmnbBgbnzKrDOQVlddS+PLdcf9JaPJr9LR/xqip8iRFeP
	7L5cvn07bUTACgBxcvrjnMBiUmeKcP05mfkGnCiBYuPFsk2ub3HUMGdrz+W8fEFgpQzm6r8DPR5R
	n1TJlyJLsgDjwwOCZ5nEcqT4UO3d4UffsUZ17edLfizS0DOAHwM4pBsr0mDfy3bal56tt2b7kKWW
	/dp5m1736qCWzgEMXnYAPkspnj+UTc0vsdyXcg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_055341_231039_3719734F 
X-CRM114-Status: UNSURE (   7.49  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Maud

On 2025/08/29 21:09, Maud Spierings wrote:
> On 8/29/25 13:59, Hide Hako wrote:
>> Hello Maud,
>>
>> On 2025/08/28 17:47, Maud Spierings wrote:
>>> I recommend rebasing on the latest next since my fix [1] was applied.
>>> I also recommend testing it with that patch, for me that fixed the 
>>> headphone detection and enabled audio playback. The microphone is 
>>> not working yet though.
>>>
>>> Link: https://lore.kernel.org/all/20250823-orangepi5-v1-1- 
>>> ae77dd0e06d7@hotmail.com/ [1]
>>>
>> Today, i build linux-next.
>> But sound not come out from headphone.
>
> Is that with your patch applied ontop or unchanged linux-next? The 
> audio was very quiet for me, even at 100%.
With pin-switch patch.

Analog, hdmi0 and hdmi1 do not exist in /proc/asound/.
Hide


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
