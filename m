Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AE0CA5FFB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekY3peAFA5hr/62ZmU2LwmRDTxOSAqdAwUVh8TIoBLE=; b=PGsDkelTruDNay
	kzVdXEDH6l3jZrDJppemY0QsLtJ5ozZ0T/JBbdblJalnsbOx4oMlX1QrUjKr40fyMdmCci1fJmgd6
	1qCizJIIOUsCXIuTOiovp4r9upOd4SE7M7wOkh3/ajZgfIjaibW0pbDow5A/EB1fPEpoNrDcj2d0Q
	wxX22u/4cBDU4rQgnCp8afN28CAYeQz0UrfBpnO1kjgiGYrMeYD7WCPsA+zobltoCo9NsM/6w9GWc
	1jqJCgazK/TIVwmr2iAmPuxnCd/CGa7W1El/owcfwvWhSM5dSUJ1nhSgDL/Un1oEBZgRAxPTXEeOa
	9tstGXZPTFzOr5Fnp/KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhkDm-00000001X8P-3bAg;
	Mon, 19 Jan 2026 08:02:46 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhkDj-00000001X7k-3IBO
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 08:02:45 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-653780e9eb3so5822978a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 00:02:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768809761; cv=none;
        d=google.com; s=arc-20240605;
        b=T0UGb0q9b+vvs644Am8sXQQVGf026AlIrMcnf6N3pzgR8b7rK9moOIPVJhyoqC497H
         Dxfx/SFP/De97linpgSwGXci/b5dqv44Jb6pl7Xu7kJ843yFrMiTUMKAD/Yt870SwoDA
         v4xA02SpiA8OjbkAMLyqKiwSC0ssDimTbY/Dcr56CIdRGKOPRCXOtk2vyhbuSyEDOFH+
         AriyHlpHCEYUdxEbSPJDh9emve3dbGmDAsx2C2T6QAMSlLCAn4fqsNf8Adfit5C3r2FS
         vLpzcySKkZsszMu02B7Q/0iAug+4MexU4Ln7ZepiCZ5odxr6ef3dupBDf6UuZtl4F2y2
         DS9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        fh=Op0yMPcHsIyZwR38WGYdfPGEpN6oOQ2+soqw/iDDUto=;
        b=bXYzOzpGW4QTv9iGuHIit8XLH2ii/veg0c7Fqq9T0maJ803LA9nf2oKYGJPklDYcl8
         Q9nTuH1LShBQMvQMYF5LeUpNIjtAN7kiPIrnGNWztjRQyNMDgW+c/iWD0nQgD+R+OE9I
         kmBeMnIfSwvSyAEC7USIewM60KYC/Au32+OTzkeMS3gRibyJACPqZ8u30/69fcSaPPXm
         gAykpRmVZ1i22YL0iEnrSnGWuJgDvF2wNOA6QqcT3TfAHZNUii+/nZ0WPUnH3icVFknE
         SKArZD7pv8Vz93Ve6QsNBOeDXIDXk4Gsam6g9ArXhDsMFQDESIFBpQnn65kGWXiQ3J6B
         DqYQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768809761; x=1769414561; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        b=QQVFHD5PxlaK8bBj1JqD3H7bQR1RDit13SYtFOM3AWHr56VQnYWQz0sxF+/A7XHu8+
         jZU7SU1VlqO0YKG0O4Dj9emU58A7DL3ph2BCHzV75rduSIpEXxr06ErtFQD9oGj4R3fm
         BBDaQJ+YrgnmbMX1FLXseLHCm1kDC9y1Mjnc+DChI+GJxJzdhVYTb3bksewIN1Y3dUyx
         zWIjU7C3bVS/qyufL7j7k5+HsLSFrhWD69za3PO83YLGS9Z3hFRcNO0y18D7hGIUABmU
         idr2h49iA/+uGWtDJp1cRc2wyfzHwWn7boowdiad2xNrR2AnhProybjy2z0bKf4YTEk6
         cJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768809761; x=1769414561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5gMLbV/jw9kkirryyuOIwhlWMMVSVE/lAczumiLD0w=;
        b=s9V9il2Ni1Crexo7GsJTrxRsaatpGF37cXDEWiVntBjRxA7/RaaQzawILVhYpNnTJb
         m/WpIOs6ID9psTkcQmjLnNS3rc/vvPAVGcT9bz/2JNIhf+H8Jv6DRMCKsJxmwiDuPSx0
         1J2X8F/aogf3Zdzi5hPxEDXiwAZXg1yNqKs00jdNmfNEsxCdzpjzvG+6cUPnap55VLgw
         u1fn/HsKazrL12QAK6hyAqaNhKfi5aYsyvOKSpavMJSyKqyGvKNnpDPWNHuYvELv3ZeQ
         bhlrLdG3hFRByV6oOSsmjzxXVGWZne4M8QkcW6BbFincyKJwOO086h84zOY1O4psGoyv
         5OfA==
X-Forwarded-Encrypted: i=1; AJvYcCWIuqalg64227w4VZ6appxNdbBv6f/X2bYq88t95deqsiQjTyxMm+M4cWv7jyEJTEO4fOlf3q1ayNVg4OmeOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwY6EWQIR2aQI9jEOhUjpcBC4zssdQMjRLa/+y9JmzFCwMYvhuC
	XAFdPsVjnEp4mLYHxtmN2+OuZupzz/mYqi5Hew8guAdC4KPR2xVckibtDzijDF2UB2qyS/WkTP7
	C/KqM+WitdKcoxsrm1ox4sGwE+PLxbZk=
X-Gm-Gg: AY/fxX7xuCD59wBwJnMClZkRI28Qa3eqk0kiFt9s13fv4+C/0GU49uo4yBJuVI1wxeg
	BbjwqMRBMwn9V6g02e4z6BoxgrWp+wR+dcoam1KsF0jZw9jgOm0JqL5scN2c64lMdlQT74g22TB
	GWQvc+0JLOhJIR2ZyEDUE5qDmwnQAu1vnoWVaIs14MfIESLLi6aqOy/Lzgct3Fu6SO1kfh1F7zB
	xuAHdgI6OzDwsOWg2oU48LAz6/InX4Ra0SvOKs2EFQD7BDaA2eKzsEG5PMGE7dpYoCCqrbnhtLd
	hhdxM4JJb5j2Ub4dvXwnhemaXhWg8onbRMmrQZk5yvlVnoRc5xoXq6tiIpi2QHpSdp86c7AJR8E
	M5m1q8+7ZPW/31N0BKLZQ+EBZaHCXb0LiuA5YXw==
X-Received: by 2002:a05:6402:2549:b0:64b:993f:ce05 with SMTP id
 4fb4d7f45d1cf-65452bd116fmr7271933a12.24.1768809761107; Mon, 19 Jan 2026
 00:02:41 -0800 (PST)
MIME-Version: 1.0
References: <20260116151253.9223-1-jerrysteve1101@gmail.com>
In-Reply-To: <20260116151253.9223-1-jerrysteve1101@gmail.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 19 Jan 2026 08:02:29 +0000
X-Gm-Features: AZwV_QjD9hcUQzta7ih2I8JDpblRClcNe5NlO_infM0IaHOPiePu7HjjLZlFx5U
Message-ID: <CALeDE9OC7p6XMMwPk8_vsBe09RJHBK8KED=YAcykYqpQXzVfyQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Do not enable hdmi_sound node on
 Pinebook Pro
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de, dsimic@manjaro.org, 
	didi.debian@cknow.org, conor+dt@kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_000243_862661_327DFA65 
X-CRM114-Status: GOOD (  18.41  )
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

On Fri, 16 Jan 2026 at 15:13, Jun Yan <jerrysteve1101@gmail.com> wrote:
>
> Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
> board dts file, because the HDMI output is unused on this device. [1][2]
>
> This change also eliminates the following kernel log warning, which is
> caused by the unenabled dependent node of hdmi_sound that ultimately
> results in the node's probe failure:
>
>   platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
>
> [1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
> [2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf
>
> Cc: stable@vger.kernel.org
> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Looks good to me.

>
> ---
>
> Changes in v2:
> - Rewrite the description of change
> - Link to v1: https://lore.kernel.org/linux-rockchip/20260112141300.332996-1-jerrysteve1101@gmail.com/
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 810ab6ff4e67..753d51344954 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -421,10 +421,6 @@ &gpu {
>         status = "okay";
>  };
>
> -&hdmi_sound {
> -       status = "okay";
> -};
> -
>  &i2c0 {
>         clock-frequency = <400000>;
>         i2c-scl-falling-time-ns = <4>;
> --
> 2.52.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
