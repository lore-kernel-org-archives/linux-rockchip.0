Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4686BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Jul 2022 17:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc6YZxcKYAig31W7HUt/ltWbTuxg+mTp1Cwk/ptsEfk=; b=FfweUz3acKRkGd
	IITv/zk8xkUgl4YvQ89iUdXvpyusorS+4HibkmVvnMTtxo++YgKOLhwlPUNIwfKj9ucewb/dEiIUT
	A0slEjqUooucjkix8z6iQD9dMMbEmJh2bluI3q30epioM/zCtKQaL8LRxA6fl/Ks8bzX+YFUTvNpL
	Cedw+gS5L0kfokFvFv+lnSMhCuQss1xlUkXAt1SopT/kRsqHib0BBf7BQAFA3O/VIYxuF/uFFSSxA
	wM4yC7FtEa9MHUkgUqQSF+d/kf7+PVmtgKil+JqkpHGFJ3lcYwbd2i9jdjx6skVIwpA9amln4aX34
	VirRqEfw9OdgQKr+MGbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEwfc-008X5x-DX; Fri, 22 Jul 2022 17:42:36 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEwfY-008X2s-QW
	for linux-rockchip@lists.infradead.org; Fri, 22 Jul 2022 17:42:35 +0000
Received: by mail-ed1-x530.google.com with SMTP id g1so6674639edb.12
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Jul 2022 10:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=N7EQU9MlWTC84hNYcDq54sTO0o6CB2OpePDIIDMkHEg=;
        b=RAgnXjbIvsoZwcpLh1CBW7DY1j7VdtKawfUE7mkVKf8TvOF6WczItap8eV38eHJwve
         /rR/mvvGPU+AmyXghjrJZOhHbdNnJvGEzChy2/xUc9kj0D00uvn90rTH2EDe3+ZVNQHs
         Lp+a2/I7Nv3SkNCfzoDi5MjZ1P5aXJQwMUUEqkhZhpocdLvUqLriTDpK6CkE4/GJ+KBP
         +zFd326waGpgEr6Ls+zrKh0ssSYcLD54Ihv4CCpdX8InVL8A5Su7/ov9k5TyD2sED2DF
         Ndj8CELTQI/WrNCkQR0fqvcFUjOBysSNpsAgo3Jx/jWT3YAiOXGzX6EjuhDbWuAHJpFr
         j3Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=N7EQU9MlWTC84hNYcDq54sTO0o6CB2OpePDIIDMkHEg=;
        b=C9MN60KPdB+P2is/1DlJv4UnuVO04x3xXA6SF5Uz1/3loFbEZzlzKK2sznlM/Qapig
         ZKOmQxrKIKBrBw7teo5qWs6EvacWZ7/4CwF6A9rg3vG8If1EKMm9eeYHoyD1/QEz2B25
         TlfbFYkipiBguPeqjys6/enbSVsfVbbhTMEZWL/jIcezN5DsYhSDAdAbhwu6DOoq6/di
         pPqAuwAxQbQckKyCoNIJhLnB48DTYjfwmX//ehyGiJKifSW3FiTGygKZURcmY+iqazuB
         9mUF63CWYQHHEOF/Flhkapq4Lf6mk10UjvzE9mHn/wPoaxRYkmFy8hwbtGC9sNRZOmHk
         AxgA==
X-Gm-Message-State: AJIora9njgbvWq5FAtu3kaxIgSV0VgPVF4HLbW7htqbCSyUNRh4vIGMe
	tozjxEYMGY8/bblh6v8X84MZdQ==
X-Google-Smtp-Source: AGRyM1sBIoB4ad1rdzYX4b4fs9ym/ManTz8+yH9dZ/S0izmo3QreB58en0TuKY9jROlaw5a3t3tvPQ==
X-Received: by 2002:a05:6402:495:b0:43a:a211:4c86 with SMTP id k21-20020a056402049500b0043aa2114c86mr996718edv.294.1658511749469;
        Fri, 22 Jul 2022 10:42:29 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id p9-20020a056402074900b00431962fe5d4sm2861755edy.77.2022.07.22.10.42.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jul 2022 10:42:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v2] regulator: core: Resolve supply name earlier to prevent
 double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <YtlqPbbBceBmekcV@sirena.org.uk>
Date: Fri, 22 Jul 2022 19:42:27 +0200
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <E0925148-3F0E-4DD6-9872-96778BFE39DE@kohlschutter.com>
References: <3B4AE882-0C28-41E3-9466-F8E301567627@kohlschutter.com>
 <YtlqPbbBceBmekcV@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220722_104233_069633_67296479 
X-CRM114-Status: GOOD (  18.84  )
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
IHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmVndWxhdG9yL2NvcmUuYyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwppbmRleCAz
OThjOGQ2YWZkNC4uNWMyYjk3ZWE2MzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmVndWxhdG9yL2Nv
cmUuYworKysgYi9kcml2ZXJzL3JlZ3VsYXRvci9jb3JlLmMKQEAgLTU0OTIsNyArNTQ5MiwzOCBA
QCByZWd1bGF0b3JfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9kZXNjICpyZWd1bGF0
b3JfZGVzYywKIAlCTE9DS0lOR19JTklUX05PVElGSUVSX0hFQUQoJnJkZXYtPm5vdGlmaWVyKTsK
IAlJTklUX0RFTEFZRURfV09SSygmcmRldi0+ZGlzYWJsZV93b3JrLCByZWd1bGF0b3JfZGlzYWJs
ZV93b3JrKTsKIAotCS8qIHByZWZvcm0gYW55IHJlZ3VsYXRvciBzcGVjaWZpYyBpbml0ICovCisJ
Lyogc2V0IHJlZ3VsYXRvciBjb25zdHJhaW50cyAqLworCWlmIChpbml0X2RhdGEpCisJCXJkZXYt
PmNvbnN0cmFpbnRzID0ga21lbWR1cCgmaW5pdF9kYXRhLT5jb25zdHJhaW50cywKKwkJCQkJICAg
IHNpemVvZigqcmRldi0+Y29uc3RyYWludHMpLAorCQkJCQkgICAgR0ZQX0tFUk5FTCk7CisJZWxz
ZQorCQlyZGV2LT5jb25zdHJhaW50cyA9IGt6YWxsb2Moc2l6ZW9mKCpyZGV2LT5jb25zdHJhaW50
cyksCisJCQkJCSAgICBHRlBfS0VSTkVMKTsKKwlpZiAoIXJkZXYtPmNvbnN0cmFpbnRzKSB7CisJ
CXJldCA9IC1FTk9NRU07CisJCWdvdG8gY2xlYW47CisJfQorCisJaWYgKGluaXRfZGF0YSAmJiBp
bml0X2RhdGEtPnN1cHBseV9yZWd1bGF0b3IpCisJCXJkZXYtPnN1cHBseV9uYW1lID0gaW5pdF9k
YXRhLT5zdXBwbHlfcmVndWxhdG9yOworCWVsc2UgaWYgKHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlf
bmFtZSkKKwkJcmRldi0+c3VwcGx5X25hbWUgPSByZWd1bGF0b3JfZGVzYy0+c3VwcGx5X25hbWU7
CisKKwlpZiAoKHJkZXYtPnN1cHBseV9uYW1lICYmICFyZGV2LT5zdXBwbHkpICYmIHJkZXYtPmNv
bnN0cmFpbnRzCisJCSYmIChyZGV2LT5jb25zdHJhaW50cy0+YWx3YXlzX29uIHx8IHJkZXYtPmNv
bnN0cmFpbnRzLT5ib290X29uKSkgeworCQkvKiBUcnkgdG8gcmVzb2x2ZSB0aGUgbmFtZSBvZiB0
aGUgc3VwcGx5aW5nIHJlZ3VsYXRvciBoZXJlIGZpcnN0CisJCSAqIHNvIHdlIHByZXZlbnQgZG91
YmxlLWluaXRpYWxpemluZyB0aGUgcmVndWxhdG9yLCB3aGljaCBtYXkKKwkJICogY2F1c2UgdGlt
aW5nLXNwZWNpZmljIHZvbHRhZ2UgYnJvd25vdXRzL2dsaXRjaGVzIHRoYXQgYXJlCisJCSAqIGhh
cmQgdG8gZGVidWcuCisJCSAqLworCQlyZXQgPSByZWd1bGF0b3JfcmVzb2x2ZV9zdXBwbHkocmRl
dik7CisJCWlmIChyZXQpCisJCQlyZGV2X2RiZyhyZGV2LCAidW5hYmxlIHRvIHJlc29sdmUgc3Vw
cGx5IGVhcmx5OiAlcGVcbiIsCisJCQkJCSBFUlJfUFRSKHJldCkpOworCX0KKworCS8qIHBlcmZv
cm0gYW55IHJlZ3VsYXRvciBzcGVjaWZpYyBpbml0ICovCiAJaWYgKGluaXRfZGF0YSAmJiBpbml0
X2RhdGEtPnJlZ3VsYXRvcl9pbml0KSB7CiAJCXJldCA9IGluaXRfZGF0YS0+cmVndWxhdG9yX2lu
aXQocmRldi0+cmVnX2RhdGEpOwogCQlpZiAocmV0IDwgMCkKQEAgLTU1MTgsMjQgKzU1NDksNiBA
QCByZWd1bGF0b3JfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9kZXNjICpyZWd1bGF0
b3JfZGVzYywKIAkJICAgICh1bnNpZ25lZCBsb25nKSBhdG9taWNfaW5jX3JldHVybigmcmVndWxh
dG9yX25vKSk7CiAJZGV2X3NldF9kcnZkYXRhKCZyZGV2LT5kZXYsIHJkZXYpOwogCi0JLyogc2V0
IHJlZ3VsYXRvciBjb25zdHJhaW50cyAqLwotCWlmIChpbml0X2RhdGEpCi0JCXJkZXYtPmNvbnN0
cmFpbnRzID0ga21lbWR1cCgmaW5pdF9kYXRhLT5jb25zdHJhaW50cywKLQkJCQkJICAgIHNpemVv
ZigqcmRldi0+Y29uc3RyYWludHMpLAotCQkJCQkgICAgR0ZQX0tFUk5FTCk7Ci0JZWxzZQotCQly
ZGV2LT5jb25zdHJhaW50cyA9IGt6YWxsb2Moc2l6ZW9mKCpyZGV2LT5jb25zdHJhaW50cyksCi0J
CQkJCSAgICBHRlBfS0VSTkVMKTsKLQlpZiAoIXJkZXYtPmNvbnN0cmFpbnRzKSB7Ci0JCXJldCA9
IC1FTk9NRU07Ci0JCWdvdG8gd2FzaDsKLQl9Ci0KLQlpZiAoaW5pdF9kYXRhICYmIGluaXRfZGF0
YS0+c3VwcGx5X3JlZ3VsYXRvcikKLQkJcmRldi0+c3VwcGx5X25hbWUgPSBpbml0X2RhdGEtPnN1
cHBseV9yZWd1bGF0b3I7Ci0JZWxzZSBpZiAocmVndWxhdG9yX2Rlc2MtPnN1cHBseV9uYW1lKQot
CQlyZGV2LT5zdXBwbHlfbmFtZSA9IHJlZ3VsYXRvcl9kZXNjLT5zdXBwbHlfbmFtZTsKLQogCXJl
dCA9IHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzKHJkZXYpOwogCWlmIChyZXQgPT0gLUVQUk9CRV9E
RUZFUikgewogCQkvKiBSZWd1bGF0b3IgbWlnaHQgYmUgaW4gYnlwYXNzIG1vZGUgYW5kIHNvIG5l
ZWRzIGl0cyBzdXBwbHkKLS0gCjIuMzYuMgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
