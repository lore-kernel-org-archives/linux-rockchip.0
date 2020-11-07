Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD07C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 02:38:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9D0620719
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 02:38:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="iRQBYYbK";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V4DdLwGM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C9D0620719
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xyEtAHNZIZKiXlSdNjb0ZIjWblQ6kUGX6ETnzlsxVL8=; b=iRQBYYbKFi4H64yzRr8wdZ4WL
	/k2IXVF4hR08JPIU/psuboJU1NSrZXKMrvdpmRIfTnSuhQDkD9iVl45PW/7DNMrGSnooMebCAZ+Wa
	W/7l/lJDpSVnrs+eNUWkwT1FW3GYQYW3MSfgj/ZSaD8I3E+iuqoq6X8G5vT6S7gWixNqrj6t3l729
	z0vBLuxuUUmWZ7deX3gAHT7qYs9cPEuiGfez0/065JCif6nwWHJlih8SjsDIbgxOPdzEJchXdKc0H
	Jwyxwk5wr7eMh4Y/p3X12zRkKkLQ/OGHoepmk8n+aovdqoTFGofQGAzudYPOK8dXKb7k6NnYGMlRL
	FeAinqRpg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbE76-0004MV-5n; Sat, 07 Nov 2020 02:38:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbE72-0004LT-3a; Sat, 07 Nov 2020 02:37:57 +0000
Received: by mail-ot1-x343.google.com with SMTP id k3so3153078otp.12;
 Fri, 06 Nov 2020 18:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3iGGvZ4MOhZ9Vlb3IwkY6Xy1dzWVJpLQcmjoEo088I=;
 b=V4DdLwGMhkEQGYRwYrlkai78aeZjXDcojRbqOrPczv7GO+JwyDyfUcB/tdl1s3MKJI
 pS1dgMImw+ZMu5sWht5lsm/LIGA6kgq80PYGKJ394Pp3C3cFNbcjkQaB0HBmr+35T6Vq
 Okx0UTt+DzsQNkbAEyoEQi5g7d8WJMQRfNt1urkLLEvJ4/YC+Hb+V+1C3sOFJrAG38SA
 S0kzdCx4yROcJZwzWC36E01P3wEUl2/JHMsIrPX3BK/MhO6QEzzgUlcq6D6Hn5bL8bNi
 ot4Vdrws0CK34NZapwpCO79voikvSQ3fzRh1f04qcTA0g+dgqQw1rqEHWu1or/PBS592
 XL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3iGGvZ4MOhZ9Vlb3IwkY6Xy1dzWVJpLQcmjoEo088I=;
 b=iRFck7p92BO3JSTZXS8hW6jzi2akZS66ZMcpe5hIL9B0gTTDzw72vwxxouqb+8ZyRF
 Lt88FPY0NkqEbTzdaR4V24xifCJa3+i4akMtvudjGiDx06wJGlzNjQw4Aw7Zk1H7zJoV
 3AYjzvlSuhf6FBzLLlHnRlQo0w6DZlcuuvxGJaU31FqtjhLM+ol4tURP/9Ngo8NrmkTi
 wMxuAPlUVfNArkgBG4vx6ZMRFPEhqP8nvdmZdI+nIOxW2OGQpPzNCcqb7NPZCp/CBjDA
 mMCJAw2EPbasiWRwrKA5qm4dQpnu4+i2+JeyBr7u7gjJqJ87beOBbRrmxBaViW5VM0wG
 2BUg==
X-Gm-Message-State: AOAM530//RJbRBmaukt6/YkAoouxVpf8d2ZiUJq0Fyh04NeXqfiQQkmP
 Zq3huvOQUUS77yZ3JfbL8IAC31Ydi4ldYL2l9CGetzRqn4ty+Q==
X-Google-Smtp-Source: ABdhPJyBiw9tpyYWFxlG3UROhYkatqalKMsTqX2rkPC1iOYy0agKpq0Odkbnj6qeoc1JZ+fczQvioNqOu2oUtHzOmHM=
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr3269790otr.151.1604716672873; 
 Fri, 06 Nov 2020 18:37:52 -0800 (PST)
MIME-Version: 1.0
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
In-Reply-To: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
From: Lindsey Stanpoor <lindsey.stanpoor@gmail.com>
Date: Fri, 6 Nov 2020 18:37:40 -0800
Message-ID: <CAEr9=gsH2UhjMO_55FKmGKS0DYrT_-XKf0iwCKCNc93epbiXNw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_213756_239064_E5D2EC18 
X-CRM114-Status: GOOD (  18.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 2, 2020 at 11:12 AM <lindsey.stanpoor@gmail.com> wrote:
>
> From: Cameron Nemo <cnemo@tutanota.com>
>
> Document compatible for dwc3 on the Rockchip rk3328 platform.

Hi all,

Wanted to give this patch submission a gentle ping.

Rob Herring acked the documentation changes, but I have not heard
anything
from the USB or Rockchip maintainers. This patchset would facilitate USB3
support for Rockchip rk3328 devices like the Pine Rock64.

If there is anything I can do to help move this along, please let me know.

Thank you,
Cameron

>
> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc3.txt          | 1 +
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.txt | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
> index d03edf9d3935..d625cd5966e9 100644
> --- a/Documentation/devicetree/bindings/usb/dwc3.txt
> +++ b/Documentation/devicetree/bindings/usb/dwc3.txt
> @@ -25,6 +25,7 @@ Exception for clocks:
>      "ti,am437x-dwc3"
>      "ti,dwc3"
>      "ti,keystone-dwc3"
> +    "rockchip,rk3328-dwc3"
>      "rockchip,rk3399-dwc3"
>      "xlnx,zynqmp-dwc3"
>
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> index 94520493233b..b41f30a61be6 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> @@ -1,7 +1,8 @@
>  Rockchip SuperSpeed DWC3 USB SoC controller
>
>  Required properties:
> -- compatible:  should contain "rockchip,rk3399-dwc3" for rk3399 SoC
> +- compatible:  should contain "rockchip,rk3328-dwc3" for rk3328 SoC
> +               or "rockchip,rk3399-dwc3" for rk3399 SoC
>  - clocks:      A list of phandle + clock-specifier pairs for the
>                 clocks listed in clock-names
>  - clock-names: Should contain the following:
> --
> 2.28.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
