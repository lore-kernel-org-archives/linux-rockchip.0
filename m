Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 840D8C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 22:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHoVrx3eqJFeEhpBaPnPf1c6APxOp8ilmt+JvFLdFGM=; b=wjoQ1JAMLTI9Ru
	PsNu+DBTZ9ULIzsp/Z3SKsLfs4Fh8jfaK5PtPd9RS2ck76TEV+GhlyWZap9Vg2QnS9bO32sEp4AgE
	Vz34SkOlWGR7lvfe9xDgECK3+d6fcRwsimiS2gMHCWvyD47wm/iSDpDndwqhiH506cuqvoqKiXblu
	v1c5nC9X8OhxQjWAW3y5lP5f7hH4jK7mXMUdmSbqgTyQHudrhnirgPsTKKavLzrumL7HX0E7FVNfW
	JoCTy3BV1qMjCjLnxsetBSKWGxYZ6Asp96/zqvDlET0fiw3r93YEEp1/ZipGoOoXY0VRj7xKxsSu+
	Y8zkdxYeqpvnVmUa/M0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0UKu-0000000EGuP-0X7H;
	Fri, 26 Apr 2024 22:46:32 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0UKr-0000000EGsO-2kZP;
	Fri, 26 Apr 2024 22:46:31 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-34c1fff534fso1646358f8f.1;
        Fri, 26 Apr 2024 15:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714171569; x=1714776369; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6rm+JpecxVAkFsxZYhF74iYvUody7HGgY15o8NiblBU=;
        b=DOqXt3Fe/NFnEeXcZ6CH9DETeR+xzdO7TrYaUMnQVwlSr9Svs0idjeLvbzUc24XCEL
         eSGvAfdwrrKi9JVGnvUDLwU1ICMf8cLI7eJFqyPNRIxgzbvZ/+/UjDzEOeomeT4+Qe+J
         OTIqqyjtVNM+bxI2fVwkOFg1AFhK71GINLCXMnrp567XqAw/iBUxt1wABRbldE7z6Hcl
         te4ktHnlk5s5+Ap0j3wYgeWuXXnp1S1aEmckNJsZEDd2Rp24TTLO1sfgHyOodOTIDdJ+
         k160e5DmX0S35VjbjoWgJNLS+khq6CpnTrPNAXc9FO0/Hd+44xv6K0jMPkX35+eH5Lab
         XnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714171569; x=1714776369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rm+JpecxVAkFsxZYhF74iYvUody7HGgY15o8NiblBU=;
        b=swVWASb5UQGlFUYp57ceDIWZFaJ7QP84yJqfjjL12gruLkbGClJ7Z+U0DnuM95RT4F
         NJBtYwNRVjaN/PCDPd97d7JbPBGJSMM68+FILduIcbrfd+gOMvexutfJoamqHmc3vWqZ
         tiNjaV9ORoRbkubgaCJ6BrXgGCJCpyT+dscY9fXJw/zTNzssI3TvF2cBJ1UJXLaC/R2z
         9G25R/yjFp+8qh/fhTm+YlLirHs1tYvLykQg0mvB2cqWxGvg0xTQQcgAEUKqgfq2aBrm
         3ClfU/uwwR5N3jRgVOC9l2y2yxaog3qphU//phu7CsHlXygMlo2TMqoUtO/PqHAuGgQi
         lNSw==
X-Forwarded-Encrypted: i=1; AJvYcCVqpAfkzikNbStFdgne23b5DOcPMDcO3KdE/p2RVpmx4/QjLbvOowIowOjF5I5o7EU6SB1+uI0EthEGJB10h4GzdY6XI9QzK/aIk/7RsTU9S181MFc=
X-Gm-Message-State: AOJu0YzB46VjahZUW+gez6wrVmfp65w3O3M4tdzwJ2Rzff46V6KJUw6W
	jkNPLiBgem7MH6u3Lb606miM1AFQlOHNtCc/VOVbcF2pvy4tBLw8zfxP5atFH6PEsHdn8nFnrpE
	pl9sH9dKIHc32IHxt2D/TJ9omTkCpxNuIXQI=
X-Google-Smtp-Source: AGHT+IGbtDUxsDvgpMKw2jHk3iZo3mBD0EMXyrfB2PUbceyFWa1yY2mB+xE1M14yGJ9ZIv2/xk2RUfa9i5iLwQ4711I=
X-Received: by 2002:adf:ee4d:0:b0:343:e824:d798 with SMTP id
 w13-20020adfee4d000000b00343e824d798mr2987066wro.62.1714171569334; Fri, 26
 Apr 2024 15:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240425222913.1760-1-honyuenkwun@gmail.com> <171414068069.1496351.4140242282948810329.robh@kernel.org>
In-Reply-To: <171414068069.1496351.4140242282948810329.robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 26 Apr 2024 17:45:58 -0500
Message-ID: <CALWfF7L0y5BgR7CvFiFnOAez=OBa747xB+aZwPk2evPmdHacjA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable GPU on Orange Pi 5
To: Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_154629_715019_330290C7 
X-CRM114-Status: UNSURE (   9.02  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UmVzZW5kIGFzIHBsYWluLXRleHQuCgpPbiBGcmksIEFwciAyNiwgMjAyNCBhdCA5OjIy4oCvQU0g
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBOZXcgd2FybmluZ3MgcnVu
bmluZyAnbWFrZSBDSEVDS19EVEJTPXkgcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0Yicg
Zm9yIDIwMjQwNDI1MjIyOTEzLjE3NjAtMS1ob255dWVua3d1bkBnbWFpbC5jb206Cj4KPiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdGI6IGdwaW8tZnVu
YzogbGVkcy1ncGlvOiB7J3JvY2tjaGlwLHBpbnMnOiBbWzAsIDIsIDAsIDIyM11dLCAncGhhbmRs
ZSc6IFtbMjMxXV19IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAgICAgIGZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlvLWNvbnN1bWVyLnlh
bWwjCj4KClRoYXQgZG9lc24ndCBsb29rIGxpa2UgYSAibmV3IiB3YXJuaW5nLgoKV2hlbiBJIHJ1
biB0aGUgY2hlY2sgb24gdGFnIHY2LjEwLXJvY2tjaGlwLWR0czY0LTEsIHRoZXJlIGlzIGFuCmV4
aXN0aW5nIGVycm9yIGZvciBsZWRzLWdwaW8uCgogIERUQ19DSEsgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRiCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0YjogL2dwdUBmYjAwMDAwMDoKZmFpbGVkIHRvIG1h
dGNoIGFueSBzY2hlbWEgd2l0aCBjb21wYXRpYmxlOiBbJ3JvY2tjaGlwLHJrMzU4OC1tYWxpJywK
J2FybSxtYWxpLXZhbGhhbGwtY3NmJ10KYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLW9yYW5nZXBpLTUuZHRiOiAvZ3B1QGZiMDAwMDAwOgpmYWlsZWQgdG8gbWF0Y2ggYW55IHNj
aGVtYSB3aXRoIGNvbXBhdGlibGU6IFsncm9ja2NoaXAscmszNTg4LW1hbGknLAonYXJtLG1hbGkt
dmFsaGFsbC1jc2YnXQphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3Jhbmdl
cGktNS5kdGI6IC9waHlAZmVkODAwMDA6CmZhaWxlZCB0byBtYXRjaCBhbnkgc2NoZW1hIHdpdGgg
Y29tcGF0aWJsZToKWydyb2NrY2hpcCxyazM1ODgtdXNiZHAtcGh5J10KL2hvbWUvamltbXkvbGlu
dXgtcmszNTg4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01
LmR0YjoKZ3Bpby1mdW5jOiBsZWRzLWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbMCwgMiwgMCwg
MjIyXV0sICdwaGFuZGxlJzoKW1syMzBdXX0gaXMgbm90IG9mIHR5cGUgJ2FycmF5Jwpmcm9tIHNj
aGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2dwaW8vZ3Bpby1jb25zdW1l
ci55YW1sIwovaG9tZS9qaW1teS9saW51eC1yazM1ODgvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRiOgp2Y2MtM3YzLXNkLXMwLXJlZ3VsYXRvcjogVW5l
dmFsdWF0ZWQgcHJvcGVydGllcyBhcmUgbm90IGFsbG93ZWQKKCdlbmFibGUtYWN0aXZlLWxvdycg
d2FzIHVuZXhwZWN0ZWQpCmZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcmVndWxhdG9yL2ZpeGVkLXJlZ3VsYXRvci55YW1sIwoKSmltbXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
