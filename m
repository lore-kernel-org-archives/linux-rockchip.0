Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61EDDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2k3+V6SvTqXwFdUTD1TVuOYwS/HkBOWob9eSkLJNUk=; b=DKbZtvmqcSxNQx
	EguqcIwZyh4z5ZjyhzRI8r4eZOgX+bXcA43m+XsS8Wvdt5NhUxUuNdrzxC435+zXiJ3xr9NYiriY0
	MtvlvEV1xNvRVWPJJITAzOYQNDiunzwKkA0h/bVGe68BzMYAaItNObq35If0LBXwMYC/g2YgU4IMT
	ZyeGbgdz2lActsB2njdetP6MZk71XSkw/cfeHz/xYOoeGnibnXaGgZtdT6jHwFiKOndS4/LauPJJK
	7q9QpYiuZ5AT1dVEdDNC0kcwJOZdZfkWVg7mGuOnVaDsuTEqUnJnEBdk/zPq5I1z5orAdvxZtGJFn
	orJGuvaQZRUXAzYu8pKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AGC-007O0e-UN; Fri, 17 Jun 2022 11:35:32 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AGA-007NyG-9A; Fri, 17 Jun 2022 11:35:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id n1so5148974wrg.12;
        Fri, 17 Jun 2022 04:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=QiECGMyoabW1BzY8/U8FfTuZG7oydQSw4kJVVQOhsls=;
        b=FiC9YX/nAbiWwFkYmKpOz54nJ50Ftf90z4aTtvlcGqj+/6QntRRyuxKPuhsoglcm9p
         q5YZ3TzJf98VWsI/C1H0fFKox9rIp0Hu1WhWRaBet+pf2EVFOfqVWfAsebl5qazljZY6
         fIhRnva8H04pMSBkSnflkePOcEQPlPUJIxm9ctbeGfTZbLm8glEVUDyIerWmpCArGuWq
         +CDARcAtAfeOxpF5xqajIeHt2Hc1iK6Bd4Q9U0NPiTtBelVIMUWVqFKtFJZe9zHjJGgY
         1u68pvzAlCzlNNRjwV+7TdQW58jLy3rg8z4Bqulf5CjyvEnRT0mJmVckNGZV1lTqw1+O
         Zy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=QiECGMyoabW1BzY8/U8FfTuZG7oydQSw4kJVVQOhsls=;
        b=2pNS1pWTPdS3RWPQRVCU5eBUjGNZ2y/M2kl1LioPOIJP2RjjEENrYv83iV055VInjS
         MrQKC9vXtYxQ6nHNN12z16LBPkbtvekvaSoWMZiVkGSN0QWIZ49+FWIpWASpsuJpseoq
         IFHnwzumuy6+FUCeDoDP3Lsiz1BJUNsp6TRpC3aD4vNJLtMaofXK5w7Nua2m8EVF9KF3
         6UTVnIV+sgLFerDT3L0N7QaNL6he2Pc2Ru2hLYCVQeVD+UuDa/JDQzm7rMicRwLFKzBd
         hjKelwo8FYgatJvEZK5nnMEsorJ4y7d8vKd6b3LzwnQFqmO3CXrBBj2B9WX+68YVYTDt
         xkPg==
X-Gm-Message-State: AJIora9DDNJ2rA9u3CBPGHFGxLWo/8sas3Khrilmoy1GAuFXBnfNxcWa
	DgCuxmWECVAPiymlPTaEC/M=
X-Google-Smtp-Source: AGRyM1tM0+j8W13INQN3awI3s1/cI40DzRuDDIr8237DyTNdEskxBbWFDWtDO84wedjS48vwBijZvA==
X-Received: by 2002:adf:e186:0:b0:213:3b79:370d with SMTP id az6-20020adfe186000000b002133b79370dmr8983011wrb.151.1655465724721;
        Fri, 17 Jun 2022 04:35:24 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id g16-20020a05600c4ed000b0039c5497deccsm17995819wmq.1.2022.06.17.04.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 04:35:23 -0700 (PDT)
Date: Fri, 17 Jun 2022 13:35:20 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: rk3399-roc-pc does not boot
Message-ID: <Yqxm+IR9wApJCFMN@Red>
References: <YqxEL/pgv3zuH6aS@Red>
 <c12cc4bd-f7b8-5e52-14a2-41a0da83bb0c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c12cc4bd-f7b8-5e52-14a2-41a0da83bb0c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_043530_376300_8F4FE1A8 
X-CRM114-Status: GOOD (  21.53  )
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

Le Fri, Jun 17, 2022 at 10:58:03AM +0100, Robin Murphy a =E9crit :
> On 2022-06-17 10:06, Corentin Labbe wrote:
> > Hello
> > =

> > I try to add rk3399-roc-pc to kernelCI but this board fail to ends its =
boot with any kernel I try.
> > It boot normally up to starting init but it stucks shorty after.
> > It fail on 5.10, 5.15, 5.17, 5.18 and linux-next.
> > When disabling CONFIG_USB, the board boots successfully.
> > =

> > In dmesg I see OF: graph: no port node found in /i2c@ff160000/usb-typec=
@22
> > According to Documentation/devicetree/bindings/usb/fcs,fusb302.txt, the=
 port is mandatory.
> > Can it be possible that the problem was that the power port being disab=
led ?
> =

> Indeed, I believe the OF graph error is just a meaningless annoyance, =

> but the general problem sounds like it's probably the same thing that's =

> come up before:
> =

> https://lore.kernel.org/all/0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetech=
no.de/
> =

> Disabling CONFIG_TYPEC_FUSB302 or blacklisting the fusb302 module should =

> help confirm that. I have no idea if it's still an open problem, or if =

> it's been fixed and you might just need to define the proper power role =

> in the DT; this just triggered a memory of that older thread :)
> =


If I comment fusb0 node in arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi,=
 the board boot well.

With the following patch, the boards boot well also:
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3399-roc-pc.dtsi
index 0e45cc2d195b..60c400ca4034 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -552,6 +552,22 @@ fusb0: usb-typec@22 {
                pinctrl-0 =3D <&fusb0_int>;
                vbus-supply =3D <&vcc_vbus_typec0>;
                status =3D "okay";
+
+               connector {
+                       compatible =3D "usb-c-connector";
+                       data-role =3D "host";
+                       label =3D "USB-C";
+                       power-role =3D "dual";
+
+                       ports {
+                               #address-cells =3D <1>;
+                               #size-cells =3D <0>;
+
+                               port@0 {
+                                       reg =3D <0>;
+                               };
+                       };
+               };
        };
 =

        mp8859: regulator@66 {

I think this patch is the proper way to fix, I will send it soon.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
