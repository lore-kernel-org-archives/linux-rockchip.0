Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD08ECAAA3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 21:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1ej8VhBqUvLEu9DDjPtDa/JWAJpfc1moGt0nw4CpgY=; b=AoXfP31pceZmAN
	B/OzE4Vueq7tCUEi/HGXKIugw1Ry+9JhvSVRZlui4iDkuNaPj7DhXecxODbAcF3VyRaEGU/kNn90L
	PiGBmAW736TvEgPwbXN+taySi+EqL8LMPRaYRvBcZ8M07tJk3dwTTwDmLkoDLUpuolQt8n5NvXT3P
	/ADM43yyNRrh9e0wLDUSrKxfAMxs3LE1so9mU00nPALoUwROgxpHfQH1leISYPH6EZk945WMWyVbT
	GzZSgZoVZyAlYRrhaaG9kiyjLKlu5uc9PE6KXxOcqTroDZSrjGUyREPV2aOzHo6uJthpa6xRBnsDS
	B7suTiFFUtkpQst/8n0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKPf-003SH9-EC; Thu, 25 Aug 2022 21:29:19 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRKPQ-003SAQ-Tj
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 21:29:06 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u15so33305945ejt.6
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 14:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=N6mUWstz7/GZuk8gVUfvEQxNLjPXVK6ZWWrfepRR/oY=;
        b=k0unfdejZ8bzDfqcBi8X9NzklJS1acMebUScpkGBo9g16789OB1GCNn6Bya5nZPSPo
         8ln8lsJ1FPjb6o0Ts3km1bIq/RbLVmaxVqNHDS6Nl+pwFtaZb8WwGAC1rOfuHtRLqz1M
         jgiZvsufPrj1vTdzNMBL2eXTPqG5QSQ6v/GS7XKOFoZGiqPrBdeLIrWNVTekjT4lH2pK
         ADdjLBJ7s0q7wj9BPikRpPKdEZ7Nml4F9I/OYh5EE01Jdeq0iLdZrVHh8jUyPL3tTPMb
         RN4092020qR4TIhamwDouAV32zeWrNhR/WCK50Dk6sHq7ry8v10+Cz9txvdBWvXyRVpR
         TgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=N6mUWstz7/GZuk8gVUfvEQxNLjPXVK6ZWWrfepRR/oY=;
        b=l1ad/XDAqcHS+G0kjm7CUVE5eFXPde08tCSlWD9MeosKDm8JPaxTWEvc5WVMHlVr1b
         lM6XWGilX3sndtSwLieWMELSNuIc+juKWWYoC7uLrLgtXaZFaBEpFkT7u37Q3VRXsOYp
         JP9ld72VDuRxDBKheutn1uOccJuiDPRc5pfd/gMyYPc/VnO48utmQUm4mTpwmezPnwSh
         fXt2NKUcLBXuu9JB2iae+KaVZLyhhiDWRWxfMQLc1n78H/XdMyGsgv7d3rfeFD/Oz6EU
         Ve3x3qYPeFlOZzrMYXk7d58sVmfv/rtf5xugGCpwOJqwG7TXx1Se+LjM0fCx+SUSoeeJ
         lrzw==
X-Gm-Message-State: ACgBeo3voCQBv2uuJojIB4ts4/hYbjUBS+E28X+JMMaADlNZ5LM7qsji
	JIta+JC/nXBYRsBxoPS7rYyWkA==
X-Google-Smtp-Source: AA6agR7TX2aV9XD+2pGdV3PwuC/Ru2piDDPY6M5k/pGiZPU0dAkIycRF0jCmSlC3S8345ugq0AJE2Q==
X-Received: by 2002:a17:907:a06e:b0:73e:ab7e:67be with SMTP id ia14-20020a170907a06e00b0073eab7e67bemr282659ejc.20.1661462941021;
        Thu, 25 Aug 2022 14:29:01 -0700 (PDT)
Received: from p330.kohl.home (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id g1-20020a170906538100b007308bebce51sm95062ejo.171.2022.08.25.14.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 14:29:00 -0700 (PDT)
From: =?UTF-8?q?Christian=20Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
To: broonie@kernel.org,
	m.szyprowski@samsung.com
Cc: christian@kohlschutter.com,
	heiko@sntech.de,
	lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	m.reichl@fivetechno.de,
	robin.murphy@arm.com,
	vincent.legoll@gmail.com,
	wens@kernel.org
Subject: [PATCH v5] regulator: core: Resolve supply name earlier to prevent double-init
Date: Thu, 25 Aug 2022 21:28:42 +0000
Message-Id: <20220825212842.7176-1-christian@kohlschutter.com>
X-Mailer: git-send-email 2.36.2
In-Reply-To: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_142904_964694_921F02AD 
X-CRM114-Status: GOOD (  17.89  )
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

UHJldmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0b3Igc3VwcGx5IHJlZmVyZW5jZSB1cG9u
IGNhbGxpbmcKcmVndWxhdG9yX3JlZ2lzdGVyIG9uIGFuIGFsd2F5cy1vbiBvciBib290LW9uIHJl
Z3VsYXRvciBjYXVzZWQKc2V0X21hY2hpbmVfY29uc3RyYWludHMgdG8gYmUgY2FsbGVkIHR3aWNl
LgoKVGhpcyBpbiB0dXJuIG1heSBpbml0aWFsaXplIHRoZSByZWd1bGF0b3IgdHdpY2UsIGxlYWRp
bmcgdG8gdm9sdGFnZQpnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNpbXBs
ZSwgdW5yZWxhdGVkIGNvbmZpZ3VyYXRpb24KY2hhbmdlIG1heSBiZSBlbm91Z2ggdG8gaGlkZSB0
aGlzIHByb2JsZW0sIG9ubHkgdG8gYmUgc3VyZmFjZWQgYnkKY2hhbmNlLgoKT25lIHN1Y2ggZXhh
bXBsZSBpcyB0aGUgU0QtQ2FyZCB2b2x0YWdlIHJlZ3VsYXRvciBpbiBhIE5hbm9QSSBSNFMgdGhh
dAp3b3VsZCBub3QgaW5pdGlhbGl6ZSByZWxpYWJseSB1bmxlc3MgdGhlIHJlZ2lzdHJhdGlvbiBm
bG93IHdhcyBqdXN0CmNvbXBsZXggZW5vdWdoIHRvIGFsbG93IHRoZSByZWd1bGF0b3IgdG8gcHJv
cGVybHkgcmVzZXQgYmV0d2VlbiBjYWxscy4KCkZpeCB0aGlzIGJ5IHJlLWFycmFuZ2luZyByZWd1
bGF0b3JfcmVnaXN0ZXIsIHRyeWluZyByZXNvbHZlIHRoZQpyZWd1bGF0b3IncyBzdXBwbHkgZWFy
bHkgZW5vdWdoIHRoYXQgc2V0X21hY2hpbmVfY29uc3RyYWludHMgZG9lcyBub3QKbmVlZCB0byBi
ZSBjYWxsZWQgdHdpY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQogZHJpdmVycy9yZWd1bGF0b3IvY29yZS5j
IHwgNTggKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVndWxhdG9yL2NvcmUuYyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwppbmRleCA3
N2Y2MGVlZjk2MC4uMmZmMGFiMjczMGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmVndWxhdG9yL2Nv
cmUuYworKysgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKQEAgLTUzOTEsNiArNTM5MSw3IEBA
IHJlZ3VsYXRvcl9yZWdpc3Rlcihjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2Rlc2MgKnJlZ3VsYXRv
cl9kZXNjLAogCWJvb2wgZGFuZ2xpbmdfb2ZfZ3Bpb2QgPSBmYWxzZTsKIAlzdHJ1Y3QgZGV2aWNl
ICpkZXY7CiAJaW50IHJldCwgaTsKKwlib29sIHJlc29sdmVkX2Vhcmx5ID0gZmFsc2U7CiAKIAlp
ZiAoY2ZnID09IE5VTEwpCiAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwpAQCAtNTQ5NCwyNCAr
NTQ5NSwxMCBAQCByZWd1bGF0b3JfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9kZXNj
ICpyZWd1bGF0b3JfZGVzYywKIAlCTE9DS0lOR19JTklUX05PVElGSUVSX0hFQUQoJnJkZXYtPm5v
dGlmaWVyKTsKIAlJTklUX0RFTEFZRURfV09SSygmcmRldi0+ZGlzYWJsZV93b3JrLCByZWd1bGF0
b3JfZGlzYWJsZV93b3JrKTsKIAotCS8qIHByZWZvcm0gYW55IHJlZ3VsYXRvciBzcGVjaWZpYyBp
bml0ICovCi0JaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEtPnJlZ3VsYXRvcl9pbml0KSB7Ci0J
CXJldCA9IGluaXRfZGF0YS0+cmVndWxhdG9yX2luaXQocmRldi0+cmVnX2RhdGEpOwotCQlpZiAo
cmV0IDwgMCkKLQkJCWdvdG8gY2xlYW47Ci0JfQotCi0JaWYgKGNvbmZpZy0+ZW5hX2dwaW9kKSB7
Ci0JCXJldCA9IHJlZ3VsYXRvcl9lbmFfZ3Bpb19yZXF1ZXN0KHJkZXYsIGNvbmZpZyk7Ci0JCWlm
IChyZXQgIT0gMCkgewotCQkJcmRldl9lcnIocmRldiwgIkZhaWxlZCB0byByZXF1ZXN0IGVuYWJs
ZSBHUElPOiAlcGVcbiIsCi0JCQkJIEVSUl9QVFIocmV0KSk7Ci0JCQlnb3RvIGNsZWFuOwotCQl9
Ci0JCS8qIFRoZSByZWd1bGF0b3IgY29yZSB0b29rIG92ZXIgdGhlIEdQSU8gZGVzY3JpcHRvciAq
LwotCQlkYW5nbGluZ19jZmdfZ3Bpb2QgPSBmYWxzZTsKLQkJZGFuZ2xpbmdfb2ZfZ3Bpb2QgPSBm
YWxzZTsKLQl9CisJaWYgKGluaXRfZGF0YSAmJiBpbml0X2RhdGEtPnN1cHBseV9yZWd1bGF0b3Ip
CisJCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9kYXRhLT5zdXBwbHlfcmVndWxhdG9yOworCWVs
c2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZSkKKwkJcmRldi0+c3VwcGx5X25hbWUg
PSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7CiAKIAkvKiByZWdpc3RlciB3aXRoIHN5c2Zz
ICovCiAJcmRldi0+ZGV2LmNsYXNzID0gJnJlZ3VsYXRvcl9jbGFzczsKQEAgLTU1MzMsMTMgKzU1
MjAsMzggQEAgcmVndWxhdG9yX3JlZ2lzdGVyKGNvbnN0IHN0cnVjdCByZWd1bGF0b3JfZGVzYyAq
cmVndWxhdG9yX2Rlc2MsCiAJCWdvdG8gd2FzaDsKIAl9CiAKLQlpZiAoaW5pdF9kYXRhICYmIGlu
aXRfZGF0YS0+c3VwcGx5X3JlZ3VsYXRvcikKLQkJcmRldi0+c3VwcGx5X25hbWUgPSBpbml0X2Rh
dGEtPnN1cHBseV9yZWd1bGF0b3I7Ci0JZWxzZSBpZiAocmVndWxhdG9yX2Rlc2MtPnN1cHBseV9u
YW1lKQotCQlyZGV2LT5zdXBwbHlfbmFtZSA9IHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZTsK
KwlpZiAoKHJkZXYtPnN1cHBseV9uYW1lICYmICFyZGV2LT5zdXBwbHkpICYmCisJCShyZGV2LT5j
b25zdHJhaW50cy0+YWx3YXlzX29uIHx8CisJCSByZGV2LT5jb25zdHJhaW50cy0+Ym9vdF9vbikp
IHsKKwkJcmV0ID0gcmVndWxhdG9yX3Jlc29sdmVfc3VwcGx5KHJkZXYpOworCQlpZiAocmV0ICE9
IDApCisJCQlyZGV2X2RiZyhyZGV2LCAiVW5hYmxlIHRvIHJlc29sdmUgc3VwcGx5IGVhcmx5OiAl
cGVcbiIsCisJCQkJIEVSUl9QVFIocmV0KSk7CisKKwkJcmVzb2x2ZWRfZWFybHkgPSB0cnVlOwor
CX0KKworCS8qIHBlcmZvcm0gYW55IHJlZ3VsYXRvciBzcGVjaWZpYyBpbml0ICovCisJaWYgKGlu
aXRfZGF0YSAmJiBpbml0X2RhdGEtPnJlZ3VsYXRvcl9pbml0KSB7CisJCXJldCA9IGluaXRfZGF0
YS0+cmVndWxhdG9yX2luaXQocmRldi0+cmVnX2RhdGEpOworCQlpZiAocmV0IDwgMCkKKwkJCWdv
dG8gd2FzaDsKKwl9CisKKwlpZiAoY29uZmlnLT5lbmFfZ3Bpb2QpIHsKKwkJcmV0ID0gcmVndWxh
dG9yX2VuYV9ncGlvX3JlcXVlc3QocmRldiwgY29uZmlnKTsKKwkJaWYgKHJldCAhPSAwKSB7CisJ
CQlyZGV2X2VycihyZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgZW5hYmxlIEdQSU86ICVwZVxuIiwK
KwkJCQkJIEVSUl9QVFIocmV0KSk7CisJCQlnb3RvIHdhc2g7CisJCX0KKwkJLyogVGhlIHJlZ3Vs
YXRvciBjb3JlIHRvb2sgb3ZlciB0aGUgR1BJTyBkZXNjcmlwdG9yICovCisJCWRhbmdsaW5nX2Nm
Z19ncGlvZCA9IGZhbHNlOworCQlkYW5nbGluZ19vZl9ncGlvZCA9IGZhbHNlOworCX0KIAogCXJl
dCA9IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzKHJkZXYpOwotCWlmIChyZXQgPT0gLUVQUk9CRV9E
RUZFUikgeworCWlmIChyZXQgPT0gLUVQUk9CRV9ERUZFUiAmJiAhcmVzb2x2ZWRfZWFybHkpIHsK
IAkJLyogUmVndWxhdG9yIG1pZ2h0IGJlIGluIGJ5cGFzcyBtb2RlIGFuZCBzbyBuZWVkcyBpdHMg
c3VwcGx5CiAJCSAqIHRvIHNldCB0aGUgY29uc3RyYWludHMKIAkJICovCi0tIAoyLjM2LjIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
