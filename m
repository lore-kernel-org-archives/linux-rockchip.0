Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C85CD4F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 09:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KDaAjw4ijbRlsUrjaUabH4+tIF4qQgUe3gABkagU3Ps=; b=AhGThOqAldZfLF
	S1UcV2dUJ9IZNbODxW+2xGIsXLt65AWQWFANt7BC40Qi9X6F1sQv9NKBiPIeArIK/oIx/EnQ39teF
	WYkK5o9cSyD1XsEo7AW49iPmxmI5B9Yhe9YXkVR8TSw7NKJAONUoCJ+PKza9ynRGHMdHMTXuP/WeW
	3H8P16XlqgCtIad3vDaVnHeRP/4rZE6WopVA6h3j/dm8dhoxz0L4ENiIz/Fupn30NYJ1wrg1ek1Cr
	NnQrBjhtSH/Bya7RI0ceCkrU3DltUP8CD/ZWv4m5fwUMlM5It7pZB27XeMDyqBaF+u++u4DUL07rn
	GpuDR3BaipER9/oSpGLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPH0j-00000000yw6-2kcS;
	Tue, 19 May 2026 09:45:13 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPH0i-00000000yvl-37s8
	for linux-rockchip@bombadil.infradead.org;
	Tue, 19 May 2026 09:45:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=3YXxLOaltJYYk3/PlymhQ3x/UTuqn9AmNJdc8Yf+frg=; b=m+9c+fSvzP+o3nsPc8lGDmHfjY
	qIy/XVViC2x8dTWSKBYnfov3AgulDzZFgeNDHEXhIm12VLbwYy16vHB7m8Y0BWiVvRYw0GHJkRpOV
	qoVG/Xcx0LfGR0K5G2tlh7ypfBpJ5mAa0u8zSVrr2yc8DEHTTljsV+42RD95Py2Kv8kvbgysarpMh
	t2qfbksn610DhFHCNHWYzukOE/e7pc530GIqtDw1a4P66Uh9wvo5zda95DH/28MTK9ble2hQPZikG
	5RCZJ4DmxG5LVTGRmHl3x4xTz5iPPd08DuH2d+wQy5fskZ6eOeDPPRFM8rFL5N2wSsTjWBgE2pblj
	JQRV/iFg==;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPH0R-0000000DkiJ-1dQY
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 09:44:57 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 9325BEC01D2;
	Tue, 19 May 2026 05:44:50 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 19 May 2026 05:44:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=whynothugo.nl;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:subject:subject:to:to; s=fm1; t=1779183890; x=
	1779270290; bh=3YXxLOaltJYYk3/PlymhQ3x/UTuqn9AmNJdc8Yf+frg=; b=i
	qrZmEo6bxtJdjQ3AxkHRv9M9aKe8r0nJAT8BTiI7/Zg8hApkC7OtAXeFcEh66jWS
	3jj4Mu2Lf1HknXQ9mgtWlkACL3kAud3jdXG1kTlmGbqsbJfAWPCiNAWzT7//EXMj
	6pcnULXjFEZsGk/uVr/a4ThVaEzMdu4FxTK5DPTxqeVlVwPjf/JbkqU7Dfy7+CfD
	DHjj1FRnMCjTCbsUcwQ545OxnhAr4JKKa/jXGHoI2U7kX3sJO9MV7vjnnQCN95fY
	tiCxOAf+qT2d6J3EZCZqd5/KABMyuXIy8Fj2Eaq0kl9vpt41gpqsce3siFL4X7ww
	BKJJlPiqJu0iuEE9yk1RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1779183890; x=1779270290; bh=3YXxLOaltJYYk3/PlymhQ3x/UTuq
	n9AmNJdc8Yf+frg=; b=Ystsk0RvA/fA1rGufXb0WS6+vaYJHS6wUl5+6C94kTE2
	XPBLAuwAo7F11nmgYD2ysIIOBKQq+dQdsY3KnVQLRiIW8miHdPEVxJxTcMxZdpo0
	4qFkm/TtcR38ZVs+kFWIfbVY9pCUu+Y9qmBG9ppMcqzk86GQGWYiPyBrlnRQ7ab4
	1dkaWQqBCYyzJ5sgnb/gGkkU68pdj3MBMuZcphjVhAJeTES1c9U5KlozuQiFJdCG
	c5n2sexYjqXRI7nTy2F4OFiLlWI+qrgfPs56JG8J7gCFYQGzT3lE95rUbTOiSZSy
	i+HPlEz0rd8CwlxaiPvKa7lxpyPUhaovzY6l6apsiw==
X-ME-Sender: <xms:EjEMaoJbgspDhgvBlX49MjHmvKNU6lvAjVUi1ZOblWNgNE1_RJ27dQ>
    <xme:EjEMaprsMPVav_5ISayTJg5zD3Cs4FbHWclpTQ-J_JJF-jTn4wewKsw0gyRKSfvlL
    _wI3cJnO2AWR5l20GX56BDJ05_eL7NBAshnB2VcEXR5vqFPxrZi>
X-ME-Received: <xmr:EjEMaozWdDnKskFFQaFfOBcdGlJZ1TmJAGywSm1Et7-Q8jEqNdx4mvsD8QuHvCvpjcuWhGuC1aATwiwn1zE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugedugeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefjuhhgohcuqfhs
    vhgrlhguohcuuegrrhhrvghrrgcuoehhuhhgohesfihhhihnohhthhhughhordhnlheqne
    cuggftrfgrthhtvghrnhepveefgeeitdeileekjefghefhheeiueetgeffgeegfeekuddu
    iefhgeduheeuheeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhephhhughhoseifhhihnhhothhhuhhgohdrnhhlpdhnsggprhgtphhtthhopeeh
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehhvghikhhosehsnhhtvggthhdrug
    gvpdhrtghpthhtohepthdrshgthhhrrghmmhesmhgrnhhjrghrohdrohhrghdprhgtphht
    thhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehlihhnuhigqdhrohgtkhgthhhipheslhhishhtshdrihhnfhhrrgguvggrugdrohhr
    ghdprhgtphhtthhopehhuhhgohesfihhhihnohhthhhughhordhnlh
X-ME-Proxy: <xmx:EjEMalN7jaTpnuhlf9CPJ076tz4bgQSLo72bPcck2QS5U4HN_5eqXA>
    <xmx:EjEMal5cxy1XCzlMEyJUzUQCWV02mySNj6Ui0-vh3FcDLipY6PVSmQ>
    <xmx:EjEMamkJ-Dx4Lgr_YHY8PRw0l9gJrcOpqGA-V_rJAxomdX7OPrU-Ig>
    <xmx:EjEMamSyn9FOfWi8g3P0UxbU4abUoNyEE5fOdIk4cfIEukjXkmYKaA>
    <xmx:EjEMakRMBoRCpls_Dznj-qrGL1WHkjlO7EirREnXjB27bhf-sS5rTs7F>
Feedback-ID: ib8c04050:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 May 2026 05:44:49 -0400 (EDT)
From: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Tobias Schramm <t.schramm@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Subject: [PATCH] arm64: dts: rockchip: Fix vcc_sdio regulator max voltage on Pinebook Pro
Date: Tue, 19 May 2026 11:44:39 +0200
Message-ID: <20260519094439.7918-1-hugo@whynothugo.nl>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_104456_119338_64A845B5 
X-CRM114-Status: GOOD (  10.47  )
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

VGhlIHZjY19zZGlvIHJlZ3VsYXRvciBzdXBwb3J0cyAxLjhWIHRvIDMuNFYgb3V0cHV0IHJhbmdl
IGFjY29yZGluZyB0bwppdHMgZGF0YXNoZWV0LgoKVGhlIGN1cnJlbnQgRFQgaW5jb3JyZWN0bHkg
bGltaXRzIHRoZSBtYXggdm9sdGFnZSB0byAzLjBWLiBUaGlzIGxpbWl0CmNhdXNlcyBpc3N1ZXMg
aXNzdWVzIGRvd25zdHJlYW0gd2l0aCB1LWJvb3QsIHdoaWNoIHJlZnVzZXMgdG8gYXBwbHkgdGhl
Cm91dC1vZiByYW5nZSB2YWx1ZSwgYW5kIGZhbGxzIGJhY2sgdG8gdGhlIG1pbmltdW0gaW4gdGhh
dCByYW5nZTogMS44Vi4KVGhpcyBpcyBpbnN1ZmZpY2llbnQgdG8gcG93ZXIgdGhlIFNEIGNhcmQs
IHNvIGRyaXZlciBpbml0aWFsaXNhdGlvbgpmYWlscyBhbmQgYm9vdGluZyBmcm9tIGl0IGRvZXMg
bm90IHdvcmsuCgpTZXQgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgdG8gMzQwMDAwMCDCtVYgdG8g
bWF0Y2ggaGFyZHdhcmUgY2FwYWJpbGl0eS4KVGhpcyBtYXRjaGVzIHRoZSByazMzOTktb3Jhbmdl
cGkgZm9yIHRoZSBzYW1lIHJlZ3VsYXRvci4KClNpZ25lZC1vZmYtYnk6IEh1Z28gT3N2YWxkbyBC
YXJyZXJhIDxodWdvQHdoeW5vdGh1Z28ubmw+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZWJvb2stcHJvLmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXBpbmVib29rLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzCmluZGV4IGI1YzA1OTI4MTQyYy4uZjIx
ZmNkYzFiNDlhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lYm9vay1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXBpbmVib29rLXByby5kdHMKQEAgLTUyNiw3ICs1MjYsNyBAQCB2Y2Nfc2RpbzogTERPX1JF
RzQgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJcmVndWxhdG9yLWJvb3Qtb247CiAJ
CQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Ci0JCQkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CisJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8
MzQwMDAwMD47CiAKIAkJCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKIAkJCQkJcmVndWxhdG9yLW9u
LWluLXN1c3BlbmQ7Ci0tIAoyLjU0LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
