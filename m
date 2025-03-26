Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3C1CC3600E
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 08:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXwovEJvEcfhDrVMKAfllX0piroHPcs8yBxmHyyPuLc=; b=i0NlN0G2UW0fFr
	1mM/7g+OmXVUpmU8ONh4k5c6C/iU1BPenHinIJqW85ze9ifNY2gNEChgIJVn654G9wijZ648EXpiy
	3bjM1LYE2qfrOrlIRZjIDzXeWvw4cTOcAmldkXil/3yAI6IjKlSYdClf2DdAJ2IV8ktWqkvq1RJx9
	bRb3TMp6pu3pYiyNC3CZQ57IkdhllmOeqqZNUKOi4sKVu/scfHeFlnFTJqEmAxmRW1iMEFNAlAMJp
	iev9+c+oW/cPj6Lrmy6wGgYBEv1qdkJMZ8RWdLfgtSY2iCpVZnRQHfBOxTrYiWwfxqnPiQmY8Im1t
	JDPL9MEmWe+UtPH0/DFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLzQ-00000007uOY-3qvV;
	Wed, 26 Mar 2025 08:19:56 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLqu-00000007sqS-3sGD;
	Wed, 26 Mar 2025 08:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ww0BkFy4aWA0YRYiXhyPOQOR4G2Nus3Dw378EDkmqd8=; b=R
	gXrxQ0Kh0sHRTtUVhdTIMLk5EjQc46fR/N7c+l6i772hwD+5qoYZE7LNfGQ2pidY
	b98Z+JZlBaiVh3OCRe+PsPAfu6Mc0EQrEFI6Li1AHFZ1+KxBdpBPKVDWW39ePtlr
	gzBNQPg8JML3FAbw0Xqqd56fPeHXyrd6YbUMlWI+Ck=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-115 (Coremail) ; Wed, 26 Mar 2025 16:10:40 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 26 Mar 2025 16:10:40 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, hjc@rock-chips.com, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v2 2/6] dt-bindings: display: rockchip,inno-hdmi:
 Document GRF for RK3036 HDMI
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250326-poetic-happy-peacock-a79d29@krzk-bin>
References: <20250325132944.171111-1-andyshrk@163.com>
 <20250325132944.171111-3-andyshrk@163.com>
 <20250326-poetic-happy-peacock-a79d29@krzk-bin>
X-NTES-SC: AL_Qu2fAPWcuU4v5iabY+kfmkcVgOw9UcO5v/Qk3oZXOJF8jDzp/xADZW1jPVTtweeEIS+ujTi3dDVRxcBmeZlRU6UgfbysO0M0gOJZSe6spqRDuA==
MIME-Version: 1.0
Message-ID: <617e3d7f.77d1.195d180e680.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cygvCgD3v8uAtuNnBmmNAA--.58577W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqB4cXmfjtY8XaAABs0
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_011109_336371_0A66A6D8 
X-CRM114-Status: UNSURE (   8.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi

At 2025-03-26 15:59:25, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>On Tue, Mar 25, 2025 at 09:29:36PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> HDMI on RK3036 use GRF control the HSYNC/VSYNC polarity, but this part
>> is missing when it first landing upstream.
>> 
>> Document that it is mandatory for RK3036 HDMI.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>> 
>> (no changes since v1)
>
>Where was v1? I cannot find it.

Sorry, I forgot to mention it : " this patch is first included in this series"


>
>b4 diff '20250325132944.171111-3-andyshrk@163.com'
>Checking for older revisions
>Grabbing search results from lore.kernel.org
>Nothing matching that query.
>---
>Analyzing 7 messages in the thread
>Could not find lower series to compare against.
>
>Best regards,
>Krzysztof
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
