Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D124E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 11:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8ReRcDSK70VP4uM3lL2AS1zVAkAB1LSt6+zULZiM6A=; b=VCPoaVZDHqrWe4
	/miMUV/YtlGQ7MVgRmfcdqT76LLB0y7yp4QBuP3h4lNOnGSis2ioQw0yV+nN1OB/Z9q8GOsNRSTG2
	ZVwmIZ81dWixPDB475jy7i050d3RDw+0fWGMTh5A9ICmTjtNWlvt+P64bHxsFBX8e1IPmUV9F+enW
	qPvwaM4/dEg3+1oxl9uDcITzvYdT7FVkh7eC+DeMVURQjvtfgY+oT5+v0mT0J7LVASsVdDl5w4+KR
	kvkgzIfh89toJyephnzgDTHd5ZlBVhwUfYLMqcfoBS5nVwPiq9a1eT4Iu1g7hpFWorVziJnIl4Th4
	6AlukAQupP7anPUzS6xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxU-00000004iQk-3go7;
	Fri, 20 Dec 2024 11:14:16 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOabc-00000004e5V-1XmQ;
	Fri, 20 Dec 2024 10:51:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=pRDaXkTGjX7R3KLIOZ+hFg8hT1FPiVLyVpMN6D7XCbA=; b=F
	Xwh9XBChvVKvR3dLL7C8uBH0fqJhI5MtshgW9B3PmthsG6Wb4KNWuTetOAhCuZf/
	UBqP+y7mPl4u9dqIxUbs8j6z3wAxclx9hea0cN3l8ezTLWADEpdNVBPFHiLGycwk
	TsjpkTYP5A2xGH7VsucEGo4i+OKW/ZkrKphltYyQI4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-138 (Coremail) ; Fri, 20 Dec 2024 18:51:11 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 20 Dec 2024 18:51:11 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org, 
	joro@8bytes.org, heiko@sntech.de, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <172721001667.289647.10163147936752673484.robh@kernel.org>
References: <20240920094947.7566-1-andyshrk@163.com>
 <172721001667.289647.10163147936752673484.robh@kernel.org>
X-NTES-SC: AL_Qu2YBvqSvkAs5yORY+lS0zJw2L5KLrXQ55RVgP4ISMMety/k0AwKZFNTPmLdzeRN0FVvuJIZPp+skrPvdt2I
MIME-Version: 1.0
Message-ID: <662c9716.a714.193e3b15aac.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: iigvCgD3f88fTGVn9wlFAA--.16687W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQW7XmdlQ8qU3gABsJ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_025140_733483_7886E993 
X-CRM114-Status: UNSURE (   5.29  )
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


ping

At 2024-09-25 04:33:37, "Rob Herring (Arm)" <robh@kernel.org> wrote:
>
>On Fri, 20 Sep 2024 17:49:40 +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> Just like RK3588, RK3576 is compatible to the existing rk3568
>> binding.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>> 
>>  Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>
>Acked-by: Rob Herring (Arm) <robh@kernel.org>
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
