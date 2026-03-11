Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE84FD88D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 00:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3zvkW3lJGPmf0jEvedVpgbqkDOceISk9z85lKO5KTg=; b=a49aesDvVo2NNl
	YEGJu1V5dIBexKLb1TfFAh3IcBuT0jvkEmE85KHD7msNrTnA/jcigCBvW5rdWi/w0EYVCWjsy5xql
	Jw4CvYxLLhvn+oWX8qLMZb5DLqySXml2hae+5OiXdmnaMV0JUpZWlpw6Yd/iCO9iLW6UjQvo+7DpW
	wc+8ZH88+bK3tfwP6OW094MwpzJWrn6jTPlEH5es01h+BO/PJV5tOUQC5fH/0y0H2I3Sdm5+qtWbG
	mmiOQCIpFvK+7lBSIKtVWGPvvs3YIpFEITU5HZj4uoULy+qFep6NenJf7RQAVIrl+pyYbiN9Y7ezg
	B4qbplYh6NTHm9VWW0ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07JU-0000000AQbc-0LrW;
	Wed, 11 Mar 2026 00:20:36 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w07JQ-0000000AQZd-3RhU
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 00:20:34 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-439a89b6fd0so10036998f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 17:20:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773188430; cv=none;
        d=google.com; s=arc-20240605;
        b=W6hYJn2QTdq5jq6hgNuK83cha6wUpFF446XMuljMsqPjmFHqCdChC4YYzgiDuViKgT
         fAaQRn2MIsbNhUNP58E9GLv4EB6bKVz4GthmOFiQFzjX+UjyAVDP9DT7cvTsfl7MSaHQ
         hyEw+Ln1aUq+4H9uDehtw474RjnEuMjzAfq7PbNDvXGaOHSpbAgOC8Gpo+ZyJ/ojMwdg
         aDGTsmCMvmtQ+TPd6Me8uPT6KHdXcuWyGkDRdp/Di0LpQ1QZdq2taxDg330lp8xdvfuY
         eRuEFgVhP7zyprGVrbeamwD69UqQZoU8ZpMyW3dHElUskULvmjAbXhIUnw4PR2qu+UGY
         yecA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        fh=s7xXwMowkDkRDdER3G5NNYnaSf4orSUPZlLnoQlFOV4=;
        b=S4YwrsPp+cBU2MvwMowXsM7S43RdsDh2lI6PyrRnJ5pJzlWMntfFP5Nb1O2KZiw3yT
         5btjsIGc4M4FF0OWevsHdRXQdYzDtElxttR2gh9t5JUu7heDlFjkI4NLhExy3YDQZeC1
         KyaavzWKRbTv48iSTeM9V3CMCKx5ixKikAJ43MpnE6kIndz2SPXRKimpEn2x6ik0G7nf
         spZc60rjfkZlDp3SEb94z53pRkufa7Pj1hXykve0SUpdETMk/h1jcpbEzIULpv9i9Bfd
         LhNw7YUMCpmhBjvudwFhmnw/efNaMPMvpOsnHt2244Ti97D7Y/iJgM2g2u/nDyvEFhk7
         X57Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773188430; x=1773793230; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        b=S965I4MI8xUnSYCLAJcYOH8XX46AkP8Npvl7DVUXGyQ4luMrzmN/mB0+KNvJlLCQRT
         fRLG0sEHkHlOSZSgGdZyZQfnx10ZKccAvm6An9+/QdvqrQLXSeDHVznHfn+6rlNCuGew
         M8UTOCC+4Vnn0QsymREoJDLS1trduyPNxZSOO9APP7JKWa+ya954G7WC0yGuaSwnojQD
         Pu3G+c+nIxrTaBMNwHfZOQVbrua/VDdXLkvFHU89oJZdDpgIsRMPPLodIRggpbyxqU7O
         jWerY7uVsX+4GWSDhHwZGtDkMIGdILDmN1h4lxru0PgddNipF2UbMBiYMA7qMeHFZf3q
         3zcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188430; x=1773793230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JEWsH70LiQTCzWY9XNlcF1ykIavavEQbO1LmIg1XHbc=;
        b=Mq7DGJKusRKTwiQ3ft5qWeYWdPXyUXYEkzaK4qlFYZpmw5hmuGOg+Zl6oxB98aY237
         xgZDth7hxoCEy7q0hpwMiSyzYSP2EdlDRu+CjnkXSneVijLpzYngp6fEmHCdvU43Iodm
         wCuaEv8ktnu+QZ7j1krRELb4e+5FP75ZFHpRzWd5xBM9hrTPq3XrANrVFZij66ASZoTu
         ds97glmK/+W76waeDrTdtzBIKwg5jGL/uWqM58/id1yb6pJKtjBBleQKLE6/n50fTGGY
         oP7XGzZre+pS4VIfb3cdb7rEQIGFcsM2vdMmQ1V4BMrULx7TEd4DaSr03UPVvJgUUulz
         ChGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYGmdpTtmhzQ5LYYZIF0dja7UqZh+nbwtCcpIl9S68Mu3T00J2iWLs5gBXCKI9Y6YQXxLxCRTZZRaDd7zFaA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWCKSxCU4jcUk/ewJ3sLVMxbmQN/HeuJAFjzxyhOCUuLFYPs3D
	AEYnXdzP425yaMc3HWgcvu9T3egDA7iRjI95stjDJgznuy4rGntZ+sT5DmXh7uz4bXZrWJktkmW
	RsnqZx3llEL/saqaMsxDwOxbpQRkC3w0=
X-Gm-Gg: ATEYQzyHREtXbeCmKguINCNRiOLoHMCl7WYyuFLETPc5NfpKYy/ueJpHu+yw9OMfCOL
	bbyeaSGab8GeJe3KHDh9kuoAoLnyti6r+Kh2vqJjMuv4HYqDOn+UC+FdGX3BvKSAjY+CODgyzo2
	1QYpmOjj1CzUjBfEPITGT/Y2kK6WfZlSmun2LIP/4e6MXlAPzbhqtx9MBgy+LcNcGb/XhvSKhuC
	wwtdLiHJk5NudS/NrroG+JXcYk+Vehrf3qMSl0P6+a5KelqctKfUIv+qQ9d4MmlNUA4XGvPKta/
	Z2yfOdD2aAXq2zfTbeSAjk6wYAZ0cGnUHUBoUY8=
X-Received: by 2002:a05:6000:26c9:b0:439:be4e:6e58 with SMTP id
 ffacd0b85a97d-439f821fe85mr1356532f8f.47.1773188430081; Tue, 10 Mar 2026
 17:20:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
In-Reply-To: <20260310031002.3921234-4-dennis@ausil.us>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 10 Mar 2026 19:20:17 -0500
X-Gm-Features: AaiRm51PAI7L0-07ByzfYcAg2ZuI_NxhNytjlEljQJmd9vtbdXeFbAGFh3Mn-oU
Message-ID: <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, 
	Mykola Kvach <xakep.amatop@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_172032_873248_03260F37 
X-CRM114-Status: UNSURE (   6.99  )
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

<snip>
> +
> +       vcc5v0_otg: regulator-vcc5v0-otg {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc5v0_otg_en>;
> +               regulator-always-on;
> +               regulator-boot-on;
regulator-always-on and regulator-boot-on does not seem right.

Why were these added? The vendor did not have them.
https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts#L216-L226

Was this mistakenly taken from the regulator usb 20 which is powering
the onboard usb2.0 hub?
https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts#L111-L119

> +               regulator-max-microvolt = <5000000>;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-name = "vcc5v0_otg";
> +               vin-supply = <&vcc5v0_sys>;
> +       };

<snip>


Jimmy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
