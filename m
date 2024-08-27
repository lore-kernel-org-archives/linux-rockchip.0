Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C002C52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 07:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qaTNRrt77/oG2Eu09rG7uF/1pCR28KmdsKGjfspAF8=; b=eSX2wef3pKISAv
	UC5+BD2vfRr+8sYCvXhmzQHUajSF0wiIyhh54oYXsQZzeT7YOqVELuq7JOw73jQ9gtR0tt12HLf+J
	KlPz5VVmAj+ybby42cWZZFCI8sVLD+EuQyT/M7TDbW217cS3/qdUhkbq3F5sGxfvI02CwYclUk93P
	bYRTIO5ljVwDo02nQ2ANSFjGzfLQKXr4JGL08PU6GcKP7lvtmJcoVEpEMjtG98Y9SpWWEJFaHhzCK
	H+rYivdLnMW3hYEc0eeqVo8z5MMwz+hwzBjn5gV0DsIAtUNRHelxzPvkj78rGGhnKWrgOxXSXpKzh
	e4g7Ck2EPmt2/QqqPkGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqEd-0000000A8W2-3AR9;
	Tue, 27 Aug 2024 07:03:23 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqDn-0000000A8OU-3OxT;
	Tue, 27 Aug 2024 07:02:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F1F14A41606;
	Tue, 27 Aug 2024 07:02:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86145C4FE00;
	Tue, 27 Aug 2024 06:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724741822;
	bh=EdNPQchORoPessX+G6mk84EUoaM5/m/oPh6e5kb7gTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KTESJBOJHBJEU4kUtEaMVsXM4ZBCg3UIH/tGJfMQ4NhjxUuY2D2Vm9HftMhnXAhjm
	 TgJ4U/J06eLspxES147RRkrPxEzWAYRLDXoo0gt0a7fVLMJdQSSuJCic+wEB7biHLn
	 mG1w5o649gC7sxY99zIO0ONvc9Yb7AvyU+cm6lQ3x0MZik9cj3HQkYpIJEf/B4sGHQ
	 aQE4EFUMg/qIX8QQrk3JnIhblFjxWci2n7fNLhqnhvLJa+ZYGav2SHM6bNWu+CrVs0
	 HncDqZPeDQcP9MI+RwiFgvFXXyQwkIoRJzZmUNBEK99nE6L44Rzjb5ropUxxyMuCNk
	 S1/0xPQ+Qnimg==
Date: Tue, 27 Aug 2024 08:56:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: soc: rockchip: Fix compatibles for
 RK3588 VO{0,1}_GRF
Message-ID: <5c5juu2ug5wmtzcokvwav2vls2f43ryom6mjrqc27uytscax6d@hj4qfezdrf7u>
References: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
 <20240827-rk3588-vo-grf-compat-v1-1-d4a18acf951a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827-rk3588-vo-grf-compat-v1-1-d4a18acf951a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_000231_925300_8B662456 
X-CRM114-Status: GOOD (  14.38  )
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

On Tue, Aug 27, 2024 at 02:06:50AM +0300, Cristian Ciocaltea wrote:
> According to RK3588 TRM, VO0_GRF and VO1_GRF have a similar layout, but
> definitely not an identical one, therefore sharing the compatible is not
> really justified.
> 
> Since currently there is no user of this, hence no ABI break, let's fix
> it by providing dedicated strings.
> 
> Reported-by: Conor Dooley <conor@kernel.org>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 78c6d5b64138..8fd539125f4a 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -31,7 +31,8 @@ properties:
>                - rockchip,rk3588-pcie3-pipe-grf
>                - rockchip,rk3588-usb-grf
>                - rockchip,rk3588-usbdpphy-grf
> -              - rockchip,rk3588-vo-grf

You should deprecate the old one instead (deprecated: true).

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
