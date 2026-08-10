Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89528C5AD7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 19:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5i8xnTF69KfpHc+QvfZZ6UycgHYIQ/dELCcMEmjx+M=; b=dQLKIcrLw1JxEc
	7fJE90JhayYqitaBGhL5x54efkIR7Ei2+LStNc+hyNMYgfzGCt44vrynVtHdedT9LFz9eKp7AIeB5
	qW59bHtFwNZ4LlnhpV2Z/Rs1T/I+43YvuVQPQ9X+bX3bUEk9wNESzYO8ZhYGUXxt7YiDR9NTIR7pU
	AkQnJltZr2f9KH7gRWqcJ9uAvdE4qyx+JMFdH5r3UHeZWh2qfYLRbJV/AFAStwx6Gij4yxPNTzBh/
	/hxWj8rzUX7eMHUIzPYPt3nuJoMCFR5t1eEwP24wbVn/xx58+j+gVxP7v0nsMIHyD3DwzVaHaof+J
	jL+4wfOLSYS0+be/EcCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtVRo-0000000CisU-3PY5;
	Mon, 10 Aug 2026 19:14:08 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtVRk-0000000CirR-3Bqk
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 19:14:06 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-38e041ea211so2611713a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 12:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786389243; cv=none;
        d=google.com; s=arc-20260327;
        b=OJ3DlF3xr7bFgTNJNnGrYC1s+8IRV/ae+Rhnv136KwE460OYBKSA2fcPa/DktMg2cp
         I8kceYrA7TvnkHyRJQ+othemCfkMSbFbvo8Ey96hMIl+slkHPBz381e55HTVrU99PNHa
         qcGbM7ZTLLN8XyiB6w9aT4mE5LB96E4PM+et3zhr1x/oDq3ODAlltt5Tvk4QVERlOuY+
         8YoByfEnWa1Dg9z46FslI8tYciHPJaNXk4Qe5G+qeAGG4lvpr6dm6k/l69JZ3EaI8Fzm
         aHWRe7CIlEwFnBHyp4kdEi8vc/qW+j5rOUA1jqbNLpWXuLwh34SuwxAE7ogJSXKqduaq
         dP0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ztYcNdQlffuTx6km2o72/tflbKDf0gQ5fGiTpALKrhM=;
        fh=sBU4efjpkiN7BIERGc5Kg3UelR8p7wqZqupKsAdOEQs=;
        b=Vf8FQx3Z5onAGXAKhzafJ+VvsxXuSADdQcK8l3yQPk+cquOgYERRQA//brckNITyr7
         1bniZkyHLWKn4U1o1gOeuWDiX7JTh7E8+5xqUSUhQ2oPAgwdba1EaFcnUle0Nr9zPvBT
         ZbZmmioT6q8rPgMdloUUOkhUgusJzh+DRhoUmB01GmGzDWsWhz1vH0cxzGuX6lMQ0qtc
         yU3JZYBYrOwe5VW37FVzBAgmlEI1zmM37AMOkVrEbW6X5j8Os87VtTbxR5mMkWEjoR0a
         tj4D2r8B03lXzF8Jd6SyaZEj3rHAl2ou4LxpEx+IOFN3vniByOe0FYjAhr/QJMmWUMwP
         imZw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786389243; x=1786994043; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ztYcNdQlffuTx6km2o72/tflbKDf0gQ5fGiTpALKrhM=;
        b=ZnMhm80+83svGh4Q3dGf2s7BBDG19xGgIiay97+xxStiiMmZURCOu9XvdYH4+WjJNt
         iTGr8SJgxr5fdeKLD+J+NTgrW1Zbk6z1ijdR5GbuLeY58BWX+cEKQtbDonolTCU3STbH
         H6d0sBGV/7VNNEvFdioqCmsPcQJ5mTWvsX65bNwUq+pTKpSYpZMgO+5Mo28A5abI0E3i
         BN3Q80dT4hTQZKnuYEO8F+dxj0yC0tK8M3oWZwebzdWv2sf4jaVAQUWia27P7QlSrNgB
         /UNINFakgnCeTrB7Ppt1aELxW6StTAiNqeiT/YG4ICbdqtoi6DoxfiiBw47arcYGuWxV
         6sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786389243; x=1786994043;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ztYcNdQlffuTx6km2o72/tflbKDf0gQ5fGiTpALKrhM=;
        b=EiXwE5zMWa+N7F099AYnfOIOcHHCtaqsCdFaOslSk9s1YHQeGhB8m9NdLCCziDuv1T
         mmaH3VfOHlPj/oYFYBwFWUclRLYIoavK33fBSNTkIRCu+N+HnkYPmQJaCEHMRFqYNO6y
         /UKNwiKaw2QxWYGa/Zc/5eFXJg2N+oTo1+a/02ND5rytoHcg4qmPgEoy1s5FGebNC4iX
         faM8bpN2ZGYgffSYjJgfKzQcewfWctYoY0bn08bvSMy/A1Md0V7bURM1+p/cQuPT1PWK
         0S8IYUGoxB904k6CpnmDMOaNjt55Fl93CXrGwrGz4n53Ra0cN9gFXu1lNrzl4lRh+9he
         alyQ==
X-Forwarded-Encrypted: i=1; AHgh+RpDZeCFKEhYq3bkBkwXFVmiqsjZXRB+gHIgaXH10c3iLfaIxdXgVQAOhc5Cw94iVhLDLGLe9eUXdysLKLIXOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOSiYm7GajS2xcHBjV9EEC+upxftE2J6m+l4RpDWbA5nO/Mvpf
	HCD8Vh/VGyunRWj91VIPMu9wxv9cIyNcMsuNyZJSa+/SN1cjqHRZ/yaTUOQ/NfRPAJh4ul1HvdJ
	nlabioPNEo7bBzCuzZv7MZX7eJ+9po14=
X-Gm-Gg: AR+sD13/au/OgJX5BF5sfhzax8VLPWibXzqlskqVatBAG+RHtXzvyO5KlU0qAwCYLVR
	BPCxiG4ojpZvMHdTac2iZ0b7l5L7vffzOAp/iKKcy3PgcoMzcaeOA2t4dU7yX4wMiCKY9CTRo9S
	Uwv79eVn7kF/fTuC++HORjjtZB1sOcGivq1CbqyvdAmDSkJUfJyyQZJPQz7Fp56fJjld6eWxUuC
	5k6wZTl2CAkQn9MSAJghT5VldjBd3yJ7sEhaUg60nrAJc4jnmooiv4kwhMN9DtKMEXuRHbBV1py
	4+lkDkVVAjbFigKNl9Q1TOCkOHdpt/ViPDfbz83mCg0jzAhffgtmzfYsCzjt2tRmKf/5knnpbiN
	jaZeAMoRzcsNPc3FbX44y+dUNJSBsK2jmk679MMeY8YVG6OPonkBVxJO9aLRor682fJLd
X-Received: by 2002:a17:90b:4d84:b0:38e:6bd7:fbbf with SMTP id
 98e67ed59e1d1-3903c697453mr40345740a91.20.1786389243366; Mon, 10 Aug 2026
 12:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260728-nanopi-m6-v5-0-cbc1eb0d8d56@gmail.com>
In-Reply-To: <20260728-nanopi-m6-v5-0-cbc1eb0d8d56@gmail.com>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Mon, 10 Aug 2026 21:13:51 +0200
X-Gm-Features: AUfX_mxzTrvRm81zDcfC1V6GLy0ckjTy6s3zsVjpnKMTBTT21-X5wzX34Jts7oc
Message-ID: <CAPSPb=s9ZxjrHPn3Xfe24kS=_29G0mX8xkxdWGj2Rkd83zwnpw@mail.gmail.com>
Subject: Re: [PATCH v5 00/12] arm64: dts: rockchip: Add NanoPi M6 board
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com, jonas@kwiboo.se, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_121404_828124_CCC9A1B2 
X-CRM114-Status: GOOD (  29.37  )
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

Hi Heiko,

I guess this missed the merge window for 7.3.
Do you want me to send a new version once 7.3-rc1 is out or will you
pick up this version?

There is one very simple conflict in
arch/arm64/boot/dts/rockchip/Makefile with the LubanCat4 support
commit.


best regards,
Joachim Eastwood

On Tue, 28 Jul 2026 at 14:02, Joachim Eastwood via B4 Relay
<devnull+joachim.eastwood.gmail.com@kernel.org> wrote:
>
> This patch series add support for the NanoPi M6. This board is very
> similar to the NanoPi R6C and R6S boards which are already supported.
>
> Main differences:
> * M.2 M-key slot with PCIe (Also present on R6C)
> * M.2 E-key slot with PCIe and USB (from hub)
> * 1 additional USB 2.0 port from an on-board USB hub
> * RT5616 audio CODEC
>
> Patch 1 documents the NanoPi M6 board compatibility string
> Patch 2 to 10 are fixes and additions to the nanopi-r6 base DT
> Patch 11 extracts the common NanoPi 6 series bits from nanopi-r6 into
> nanopi.dtsi
> The final patch adds support for NanoPi M6. Support for M6 has been
> split into two files; one dtsi and one dts file. This makes it easier
> to add support to the new M6V2 board at a later stage.
>
> All changes have been verified using the schematics for M6, R6C and R6S.
> Only M6 have been boot and runtime tested. Testers for R6x are welcome.
>
> Note that Sashiko may complain that u2phy0_otg is a dangling phandle in
> patch 11. This will never happen in practice so it's safe to ignore.
>
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
> Changes in v5:
> - Switch from simple-audio-card to audio-graph-card as Sashiko
>   complains, rightfully, that the bindings are a mismash of both.
> - Add pull-up on sd cd pin. Noticed by Diederik.
> - Link to v4: https://patch.msgid.link/20260717-nanopi-m6-v4-0-b31391a72e41@gmail.com
>
> Changes in v4:
> - Remove boot-on reintroduction on vdd_npu_s0 in nanopi.dtsi during
>   refactor screw-up. Thanks to Sashiko for catching that.
> - Fix minor typo in "add gmac1 add phy-supply" commit message
> - Use schematic net names on PCIe reset lines. As suggested by Diederik.
> - Link to v3: https://patch.msgid.link/20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com
>
> Changes in v3:
> - Reorder patches so the DT fixes/additions are applied to
>   nanopi-r6.dtsi as suggested by Jonas Karlman
> - Add comment to gmac to rgmii-rxid phy-mode to explain usage
> - Addition of pinctrl to sd and pcie are now marked as fixes
> - Remove both always-on and boot-on from NPU regulator
> - Link to v2: https://patch.msgid.link/20260711-nanopi-m6-v2-0-422675a65402@gmail.com
>
> Changes in v2:
> - Organize DT such that adding support to NanoPi M6V2 later is easier
> - Use correct clk id for I2C mclk out as suggested by Diederik.
> - Add a couple of acks from Krzysztof Kozlowski.
> - Link to v1: https://patch.msgid.link/20260703-nanopi-m6-v1-0-8344a1559519@gmail.com
>
> ---
> Joachim Eastwood (12):
>       dt-bindings: arm: rockchip: add FriendlyElec NanoPi M6
>       arm64: dts: rockchip: rk3588s-nanopi-r6: fix missing sdmmc cd pinctrl
>       arm64: dts: rockchip: rk3588s-nanopi-r6: fix missing pcie rst pinctrl
>       arm64: dts: rockchip: rk3588s-nanopi-r6: remove pull up on rtc int pin
>       arm64: dts: rockchip: rk3588s-nanopi-r6: pcie2x1l2: add clkreq
>       arm64: dts: rockchip: rk3588s-nanopi-r6: remove always-on and boot-on from vdd_npu_s0 reg
>       arm64: dts: rockchip: rk3588s-nanopi-r6: remove useless vcc_3v3_pcie20
>       arm64: dts: rockchip: rk3588s-nanopi-r6: add gmac1 phy-supply
>       arm64: dts: rockchip: rk3588s-nanopi-r6: remove bogus vcc5v0_usb regulator
>       arm64: dts: rockchip: rk3588s-nanopi-r6: add comment about gmac phy-mode
>       arm64: dts: rockchip: rk3588s-nanopi-r6: refactor to support M6 boards
>       arm64: dts: rockchip: add support for NanoPi M6 board
>
>  .../devicetree/bindings/arm/rockchip.yaml          |   3 +-
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dtsi | 142 ++++
>  .../boot/dts/rockchip/rk3588s-nanopi-m6v1.dts      |  57 ++
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 792 +-------------------
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi   | 797 +++++++++++++++++++++
>  6 files changed, 1000 insertions(+), 792 deletions(-)
> ---
> base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
> change-id: 20260701-nanopi-m6-ffeef7252fd7
>
> Best regards,
> --
> Joachim Eastwood <joachim.eastwood@gmail.com>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
