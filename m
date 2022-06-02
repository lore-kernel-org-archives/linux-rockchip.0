Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D2FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jun 2022 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GdIMXc0eNgsmErdqDbwwutBPOlxF9Dw05E5Ff+3mg0=; b=Gcccw47kcVNJqZ
	Zk30SAcyf9wItMlRpvOAUe1s1yhNG4Bpe3Tc6oWj9l2j1A+D8uWZaIPcfBnlcFVDjA63AUe8771V+
	HXdL7+K95q2Tjzda8zAAHUH3aRHlf5hTBXfDbydrG1EYkbmw1ubhhgHgHSIs8WWFrlf2tG/7bvkh0
	QEc/MrhJ0byFjPSDvPZWbGt4dN6hPu1OalvuuzAQ0rmH1vEhaTHm0/G9HT3BKeoGKW9K4Ip/xFFvx
	p11fzXjw+HP9hlxZkzZmJ6dzQcI8jgazyN0xxj5PnwqSQ7StN5xyr4QlxBMECE+qDr6DzOMAxzSQe
	tY1Zi3NShwC/9OaUUwxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwZnK-0011PO-C9; Thu, 02 Jun 2022 01:38:38 +0000
Received: from mail-m17656.qiye.163.com ([59.111.176.56])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwZnG-0011Oc-Q3
	for linux-rockchip@lists.infradead.org; Thu, 02 Jun 2022 01:38:37 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m17656.qiye.163.com (Hmail) with ESMTPA id A6B65800E7;
	Thu,  2 Jun 2022 09:38:28 +0800 (CST)
Message-ID: <55089a25-67db-45bb-c61b-241ee836f025@rock-chips.com>
Date: Thu, 2 Jun 2022 09:38:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: rk3568-pinctrl for LCD RGB666/RGB656
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jens Bauer <Jens.Bauer@wolfvision.net>
References: <3e9619d3-2a59-80eb-b701-90328c6943e6@wolfvision.net>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <3e9619d3-2a59-80eb-b701-90328c6943e6@wolfvision.net>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpOSU9WHhgYTR5LGk
	0aQksfVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MFE6ORw4Nj0yDx8dUQ0DKRFJ
	PEpPFB9VSlVKTU5PSkhIQktCSkhNVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU1OSTcG
X-HM-Tid: 0a812210652bda02kuwsa6b65800e7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_183835_050147_CE95C529 
X-CRM114-Status: GOOD (  12.49  )
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

Hi Michael:

On 5/27/22 20:46, Michael Riesch wrote:
> Hello Liang,
>
> According to the RK3568 TRM the Video Output Processor (VOP2) is able to
> emit parallel RGB data to LCDs in 24-bit (888), 18-bit (666) and 16-bit
> (565) format. Based on this I would have expected that
> rk3568-pinctrl.dtsi specifies one group of control pins (clock, hsync,
> vsync, data enable) and three groups of data pins (with 24, 18, 16 pins,
> respectively). Does this sound reasonable?
>
> However, there is only one group with the control pins and the data pins
> D0 - D23. I cannot tell which pins have to be assigned to the different
> groups. They are mapped 1:1 to Rockchip pin names (e.g., D0 is mapped to
> GPIO2_PD0) but it is not clear which function (channel, bit) each pin
> has in this context. Could you please elaborate on the mapping of the D0
> - D23 pins in the different operating modes?


For 18-bit(RGB666),

R0~R5 map to D18~D23

G0~G5 map to D10~D15

B0~B5 map to D2~D7


for 16-bit(RGB565)

R0~R4 map to D17~D23

G0~G5 map to D10~D15

B0~B4 map to D3~D7

> Thanks and regards,
> Michael
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
