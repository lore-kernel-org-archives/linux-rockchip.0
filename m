Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E15C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 20:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSfBKc3NBTII0WqkhBg2/84wq15PFzK6rH/FBPkCHQ8=; b=fMWQRvKo98MPWL
	eHve8w3CTgkLqqZ0+AK9YOmBRBsAwxMZt7aJxilepSoBn5/P3CZIk19El2kIEJ9dxWDId8mAYvhC5
	E70DQR+79qZ4JaaOtSepJsQRxfmERuwdpIWggwNdvK3Am0KLJ/4F5KlCE+TQj69GpIuip/7ayNGLR
	ommeFzTR3/aTFbJYOWwL/yfLefkkXOG1I4inr9Uw9Z2wUJm2kTXSgaBhYwzEi3MEep4zUIPEuf/wb
	hbUspoPcexxd9bO/ufzq1ceSb0LEEeotpJgN7Dxbe0aHG0QTH1IP9ZMp9aa3JrmJidUFxiGp0q3fA
	A4aec2Sy8zeAfSmC6feQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLqmw-00000000eM4-1iHy;
	Mon, 24 Jun 2024 20:59:46 +0000
Received: from smtpbg153.qq.com ([13.245.218.24])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLqmt-00000000eKe-0lSs
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 20:59:45 +0000
X-QQ-mid: bizesmtp84t1719262748tbi7i2id
X-QQ-Originating-IP: +awYDE9pSAPTm9wZ+7UUEevq+ygT6nzyRZX8CRB7ni0=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 25 Jun 2024 04:59:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3610672459738816953
Message-ID: <92475F697AAA5E9E+02e882f2-6ec7-417c-9210-229fd9a652b2@radxa.com>
Date: Tue, 25 Jun 2024 05:59:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
 v3.0
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623201415.3205-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_135944_069004_C2C4EC77 
X-CRM114-Status: GOOD (  10.88  )
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

Hello everyone who read/reply my patch series,

I'm sorry. I wasted your precious time.

Jonas Karlman suggested simple way completed in u-boot
 
https://patchwork.ozlabs.org/project/uboot/patch/20240624204529.34742-1-naoki@radxa.com/

any change in linux kernel side is not required anymore.
please

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 6/24/24 05:14, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
> 
> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
> RK3328 SoC with a compact form factor.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Changes in v3:
> - none
> Changes in v2:
> - none
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index eca0a42eb384..53ca61c47b76 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -779,6 +779,11 @@ properties:
>             - const: radxa,rockpi-e
>             - const: rockchip,rk3328
>   
> +      - description: Radxa ROCK Pi E v3.0
> +        items:
> +          - const: radxa,rockpi-e-v3
> +          - const: rockchip,rk3328
> +
>         - description: Radxa ROCK Pi N8
>           items:
>             - const: radxa,rockpi-n8

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
