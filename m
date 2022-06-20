Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A4D4C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 19:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub0TY7VT7zFiaC+XkOZWuYdljYndrqHx5VOxWRTXUhA=; b=MUHskDP2+Ag5cw
	3jArCqMWr7yuYJ4fmzqT23LacMImtkFfTQShvVjV/1G7SC5I0yHLHgIa6g7MXP/m3uVBAsNlS8MJC
	jTzjCzwnmBS8AIkAjgsT20FqzOpFXeej8H57wH6r5Z7eH5KZ9bTlE27b3BKA6W2HhltmeepEeLJDP
	Jy9x2TRrC91JrAOv+CzK3oY84RUGomn+SoqDYLxbikksFB5ZsnznOP4T8swptGf2FB+QgoVTlqtwX
	3zbJ4ORbSDtSV6JUYavoV4nd93xvaKECVHECMyE2ingMIC12kF7pnXwdd10dzrthfyKzKDnDfPMon
	LBDgjPi09I6f+WPyomow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NSC-0025Cv-56; Mon, 20 Jun 2022 19:52:56 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3NS7-0025Bv-7g
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 19:52:54 +0000
Received: by mail-wr1-x431.google.com with SMTP id g4so16018648wrh.11
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 12:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jq8IlzmRmUKlqv3On/oY1AUojxYr/sDjB5anz61AADg=;
        b=BFMp9cD/zJgwL7A4Gi2zq2+syrCaj79o2kHHXPppdxVFrjwtVwLBYpUIDHRY9a26gL
         s1Feayiw4pBUYQ4FYhfHO5CdknDD+GXwv9ka04CjqdQMwf0vWl+GJdgALEa8a3Ga7dd/
         le3DpXKcQEiR1UvDGX2k3gXztiMotyh4G1Njku9pVrPab4aOx/YOnMWZCvnl+uDd4+Rk
         b/3VHTUWZHW5sX4LtW/816+QZQUlZVjC/MYeLLaDSj49J0+TBTVfQnYNPqgfq/96Gqbc
         cB7Gc1s57/b2BFq43tGo3oBWLmMNuPsqvYd0IY5jrJEcIpZBzMpUor866y2vaBqhEtwf
         Xw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jq8IlzmRmUKlqv3On/oY1AUojxYr/sDjB5anz61AADg=;
        b=U/0bZEYs2hDHwWZU2SeYWx5AZe3uWd7iZGm+Y7lTzCARM4vVWSih7ftGbsq267wKwK
         iJ5SjeSYonC1RigCIiF7RpnVg7q+kw2rQhtL/BzAB2FA8JaxeN8n9Nx/CSFerkTiznzf
         szT+M6ubI+Y89yMGxnTLEnTEAjlselzioUYkhlIoqXUAidoRCnYm8dmzeFin6rL2LaZ0
         zADHK+vSycOP73Mx6pHWI9YvXrqK0ug6aUxC0YDuRn4J3CgE5iQgReQlj/OhDeg+RA4a
         UyVI/efD4GOVQ0R1+SKArfDVxknyD+fN3H2fZx4gdA7wBa4S7EhOtpAvk76ngSRfHssO
         zW2g==
X-Gm-Message-State: AJIora8f17B7wkJSGgd1xKIo2/SKQK2KmZlxvXWivymNRIS5x9w1gkxt
	l21Jy/rah/hmAmCBI6TddLemzMg4etMbPA==
X-Google-Smtp-Source: AGRyM1ub028C5N2cNunBKzdOO6smSIhTL/+9sSH1BIJD/KahEQc2jTp8WwsgKdqKKhpYSvmh2TlDGA==
X-Received: by 2002:a5d:598e:0:b0:218:525b:4743 with SMTP id n14-20020a5d598e000000b00218525b4743mr24392302wri.708.1655754768944;
        Mon, 20 Jun 2022 12:52:48 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id j19-20020a05600c1c1300b0039c5645c60fsm28023077wms.3.2022.06.20.12.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:52:48 -0700 (PDT)
Date: Mon, 20 Jun 2022 21:52:44 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	m.reichl@fivetechno.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	stable@kernel.org
Subject: Re: [PATCH] arm64: rockchip: rk3399-roc-pc: prevent fusb302 powering
 off the board during boot
Message-ID: <YrDQDLOXQKtPVgzU@Red>
References: <20220620110407.2393644-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220620110407.2393644-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_125251_544190_7412AE54 
X-CRM114-Status: GOOD (  15.27  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Mon, Jun 20, 2022 at 11:04:07AM +0000, Corentin Labbe a =E9crit :
> The rk3399-roc-pc never finish booting because it is powered off when pro=
bing
> fusb302.
> =

> The type c port is disabled because not present in DT as can seen in dmes=
g:
> OF: graph: no port node found in /i2c@ff3d0000/usb-typec@22
> =

> So adding the port in DT (as needed by the device tree schema of
> fusb302), permits the board to survive and finish booting.
> =

> CC: stable@kernel.org # 5.10+
> Fixes: 8bb878cf20ae ("arm64: dts: rockchip: add support for ROC-RK3399-PC=
 board")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> This patch is tested on 5.10.123, 5.15.48 and next-20220614
> =


Please ignore this for now, it fixes the issue but
[   31.653778] typec_fusb302 7-0022: cannot register tcpm port, ret=3D-22
[   31.659415] typec_fusb302: probe of 7-0022 failed with error -22

So while having a board which boot fine is better, having everything well p=
robed will be better.

For fixing the probe error, adding the following is sufficiant:
@@ -558,6 +559,9 @@ connector {
                        data-role =3D "host";
                        label =3D "USB-C";
                        power-role =3D "dual";
+                       op-sink-microwatt =3D <1000000>;
+                       sink-pdos =3D <PDO_FIXED(5000, 2500, PDO_FIXED_USB_=
COMM)>;
+                       source-pdos =3D <PDO_FIXED(5000, 1400, PDO_FIXED_US=
B_COMM)>;
 =

                        ports {
                                #address-cells =3D <1>;
But this bring the initial issue, the board is still dont booting...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
