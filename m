Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980E5FA3728
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 07:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiEG0j6DGMsUPfbWlWGL6qeaupaR9KWSQUJE5NbKRyA=; b=T2CxPW07fI3EXE
	uWEx0t06/4TUWs2aclmRsqz4wSzsZLGoafP1heQRPwn6opcgpETUKYlVs1/7l1Ui23w8c3VpXt7zb
	xtV9pdedEZwxtTFyYVwkwNccz4JHOfj5hjckwqrmyTu0ZehvKblNt0/MKbeO2xnoiX41PSKN+0lPI
	oe1VHp4kOOdZlbBxnujhfTBZ6avxW6j8N+uQXcPXTlWZ+LhKDXNTighO46V65wVeTNjpl9AxuYfBB
	56ReCRIqyQOmF0laWVuTWExb7yJPTaLcdd9cKlks8FzgzRIFaJpiLNZO0h42K4IB4VuN7zqOBoM/k
	ZvAI/fGtyaff3tWTFE9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Ar-0000000FFCr-0RQo;
	Fri, 13 Sep 2024 07:57:01 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp14R-0000000FELQ-1kx8
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 07:50:25 +0000
X-QQ-mid: bizesmtp90t1726213802tvikuj7n
X-QQ-Originating-IP: mjQAQDWhyoFpaqdBsYdWAknrECX/wfuYA1BesQyoNBo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 15:50:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16816694279015642197
Message-ID: <73DCFBBC05FFFF33+a1ef649f-3506-4009-82c8-611df6c07d86@radxa.com>
Date: Fri, 13 Sep 2024 16:50:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK
 3A
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
References: <DBE2633C9C284F67+3d59ded2-665f-4640-826d-4e2ec88b5d51@radxa.com>
 <20240913070204.57661-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240913070204.57661-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_005023_859320_A76DE48F 
X-CRM114-Status: UNSURE (   6.93  )
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

hi,

On 9/13/24 16:02, Chukun Pan wrote:
>> arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:656.32-664.5: ERROR
>> (duplicate_label): /pinctrl/pcie/pcie20m1-pins: Duplicate label
>> 'pcie20m1_pins' on /pinctrl/pcie/pcie20m1-pins and
>> /pinctrl/pcie20/pcie20m1-pins
>>
>> we need gpio pin for reset.

sorry, "U-Boot need gpio pin"

> Can't it work just written like this?
> 
> &pcie2x1 {
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pcie20m1_pins>;
> 	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
> 	vpcie3v3-supply = <&vcc3v3_pcie>;
> 	status = "okay";
> };
> 
> If not, please overwrite the pinctrl:
> 
> 	pcie20 {
> 		pcie20m1_pins: pcie20m1-pins {

I didn't know how to overwrite it. thank you.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
