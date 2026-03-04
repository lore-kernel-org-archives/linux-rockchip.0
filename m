Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 257CFEDEC16
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 06:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJxU8bHW3Cvn8vzOkbgn3xiTRG8PapFgQTNcm6zekps=; b=UC+XySnRHt18Xx
	ZQySu56ZGbtV5UjAcJ9RjRt925Lq7eJFC3a7y6QxHK7EpchtOJKMWcxAsDOcs+3s2TLxJX4SM13Ax
	+GuJTFbQXdVqg3gl2dZDUhQxqInaQo825h/iQ1JJ3n65c/MRQmIoevLFzmkwU71Boe7q7eiusLB0H
	CB3P3MbeTDdOOoNPGHDrFGVjiN5CJHiv0052PvVTYqCp6rrul4j/XsYVcXtfsaxxMtZwvU1Z2tJBS
	e1PvLQJPNoc4iQMQfqWS4gghmz4KCQmtfhU1L/uE6uAg/WX9apbjiydzEn4dyA17hUVRUwuRCgYNz
	ExU/7JoQGf8vWMfZcZRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxg2g-0000000GXUc-1lBN;
	Wed, 04 Mar 2026 06:49:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxg2d-0000000GXTq-3InY
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 06:49:09 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SOIv2306023
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Mar 2026 06:49:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mICino5nH4L36s9MqQ2N08OYmrnyuBSpHkGBIndzUbc=; b=XM1dsbhtVZQz3NdC
	zO87XJXxXvS0aLlPQwjRyYfm1KNnfKiCU3C6Ge++M033q2OtHEeZT31WV8e0DLQD
	IPS11eFCoWg7kUYFM63n8a1ucUmasFgXfYlSx/UYSRIMGcsNw2SHNJl5szWEgYVk
	sapuv8Xn7YP22CB9otpwgMkqBKc3tdgIKexEx6Jwb+aIEJNObe7sTr20aTqeL/l/
	SeDgC/TNmNSamrurdWk6t9dfln2bZvDf89EVToGJ0ZTJkwyyM5wJXWpn/lp1Priw
	YAe2kaQzyKmE8o4cvmPMvsASrRZ54TL61RIlZWOwAx33ENgoa9u8ae5PRg5CMs9b
	PajDGw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpau8ry34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 06:49:06 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-824b42b8a81so23230975b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 22:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772606946; x=1773211746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mICino5nH4L36s9MqQ2N08OYmrnyuBSpHkGBIndzUbc=;
        b=DEU7ITw7Y6vGn72sYq/VlvMdd/lQ3zhri2C7LFs8YqhPdO8SlAdjI2zx6p51o+NAK+
         q3e32DnVreJKtWe6+zUernUcO9unKxjAgbgDIfjIk/xLXdTn+ED9uie93h+tG2T3XaGm
         VGA3bJdtCqz8cofFzMfZtjW3ilakYHQpoOwTmg+mP7eBkNOJqsqtD7M/uXlEvjp74AfV
         Zp1j1uG233+/Kr6QLwKn2oeeTOTJeLXGhFwD5l5YJlHmFqBFUsTHVs2oL4IIqay6I3jn
         c+tOcK303zUFLwjO5DGJOY77FBDsx6IkhSeyLbHsndl0ShXRvduEYCXg8wV30lUjEAce
         7jcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772606946; x=1773211746;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mICino5nH4L36s9MqQ2N08OYmrnyuBSpHkGBIndzUbc=;
        b=k9eUogdy/PfeHd6IoFNwUcglw9umVIPcxBJK1eRLWKfFKpPem/0s0/sAoHKlnlg6Nj
         qXMmIp5qU2qBdBJqdJe5kJOHBe46wCOxA3B9wbqpc+m01O3NmBUBjA0yPS5RkGPbikIc
         KPF8XFyUH2QZ+ruVQXdUybNx3J4RXNnFQWyuImr6lCJogPlFR4KQ74aj7bU1lLlKQ1UA
         Mz4BwpadTOyWd8k4MENCy9huhups4o/4ckBrQoNuh1jY/2KVtMR/BIMHEmuvHptHIZwE
         rp/PTIqItJi9iWnbFo74VwYYCUmlIs4D7PeF6z2KKlfBpl82uQtxns3POfCi8RIJ1mLs
         XMqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt6KtLFLq8D0g39WmcUzEAtzo1npBS22kmOt4HHheg255bNbob2ixVpnwuvoDn97UXX7DXNqj9/j1+yO5mzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtNcsYJqzq/Gi2gADTZhEWczXrkqfmymS9gj2NcSKlnYUGf+3X
	uA3ba2nPhTJ0FTuF/PCG2FIfudh0+d/4G99Aetf2bBZNekbRZh9UIGXOsPJ/uzfgIpELNcsK4nT
	wHNA35OUnekEPJSibSR3DI5aASo3SEHHxNDTj3xh1nnmBDVdvjU73OaFhCGBfR+jptWvhXjYLQH
	c=
X-Gm-Gg: ATEYQzyGnaznaW+2Yu4zwJMN8UlNCiJT0pIc2BXA83se+gesUbXKTrZuLReXhAyr5ri
	plWfYklCLjtZLgHu2S8+O836WFTFiBAMqSpRilDGTaFB2ayqYrOTHSC/W8maBcY/PqZkB/vazW+
	xSwyxk54QArikCziU+on947F0w5xQ1bimjyp+/IBYB+yk9QousLf3aM75W6aQZTTuCerohe3gn0
	ABScez8V93QNZgAeEiHJbua+zH17BRkjaKl1MkJrX2Yiq+sxwetYJEtfWGKSlA/WHgZr/xQjB0N
	LzljwmmIlM31SJIW2EiBNEhcze+N7OJBO1ofrno6rtNcRJ9Y1dOEjWe7hnwW3BzM5pwCt0L5M7W
	+KOnvItKjnjeE17yT41kFpQ==
X-Received: by 2002:a05:6a00:138c:b0:827:32ea:5307 with SMTP id d2e1a72fcca58-8297290ec8fmr1047525b3a.3.1772606945570;
        Tue, 03 Mar 2026 22:49:05 -0800 (PST)
X-Received: by 2002:a05:6a00:138c:b0:827:32ea:5307 with SMTP id d2e1a72fcca58-8297290ec8fmr1047501b3a.3.1772606945084;
        Tue, 03 Mar 2026 22:49:05 -0800 (PST)
Received: from [192.168.1.2] ([2401:4900:88da:227d:6548:57ab:a3a:47f6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739dabd43sm21015522b3a.25.2026.03.03.22.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 22:49:04 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>,
        Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>,
        Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Anand Moon <linux.amoon@gmail.com>
Cc: Grimmauld <grimmauld@grimmauld.de>
In-Reply-To: <20260226101032.1042-1-linux.amoon@gmail.com>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Message-Id: <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
Date: Wed, 04 Mar 2026 12:18:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=AJS1/0o2 c=1 sm=1 tr=0 ts=69a7d5e2 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=SMwnmUEIIvgHDjHqlWcA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: dOlahQCfZTPYYfPTVFQb5u4jqMI8r4wZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA1MyBTYWx0ZWRfXx90VEpqqWCBu
 F8Tz2P+ytVEGeccAbEvuKfGffJC/kC9j4XoH9I18nN+YFVoVK5pc05kYtyn9Y4Ng6zpqodD/bii
 kQgPQIwoTtNCZW0u27ag0v1bjxTy+MHp+gWJymaG/WhscdZjTVJhwsErLhdDqv6d7+Q/AXRfonY
 BN5P95IC8cJ0at4X5xYCfIFr21vH5IFkmWGeezOES2NW4NphbwuUOHridy6kcq7Ccrw3M//y5AL
 zIvbgiCHiEIAKWAr5KyMsCy6P8xD9QxvIMl2rurCanNkIOZoH2WekThjA9jNQB3jK4it5lyyBz8
 jh3CfcP98DyoDI8htUMVOGpChW2Uf/0m1CUrVystMDtZ944qk7G34Q0tAiUqhmRTTPfQ8JLLHVM
 eepk+EwbdCAIuJnDhKv0/hNGZ0az4RQnqtl//81/Kv2CBOv4IGYL+UZ1OEppT00unehgFBj2ZCD
 R71H4CkzuH+PoJinU3A==
X-Proofpoint-GUID: dOlahQCfZTPYYfPTVFQb5u4jqMI8r4wZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_224907_861481_374CDBD0 
X-CRM114-Status: GOOD (  10.07  )
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


On Thu, 26 Feb 2026 15:40:23 +0530, Anand Moon wrote:
> Rockchip DWC PCIe driver currently performs synchronous link training for
> combo PHYs (PCIe 3.0/2.0 and SATA 3.0) during boot. This process waits for
> the link to be fully established, adding several milliseconds to the boot
> sequence. To optimize boot time, this change enables asynchronous probing,
> allowing link establishment to proceed in the background while the kernel
> continues probing other devices.
> 
> [...]

Applied, thanks!

[1/1] PCI: dw-rockchip: Enable async probe by default
      commit: ec392abc95932838bf7e3d659d358f4df9ff5a0a

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
