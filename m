Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B196C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 16:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:MIME-Version:Subject:Date
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t7ghi6sHC77sfcZY5hYZMF0QDvpgsnU+v2/tGpuJp+o=; b=HCJ2vR+5BHVpsz
	s35u6DKVgZvl8vYmKDoKZ5jSOCX7ei4sjfmbdGHQPCnmXCsnv6sKzTz5A4IcEyo9AFR8Qqf1kK4Sm
	x4d9WydvpjnGLSfeVjyxi60YLSsKZHyvSsfiUZmRDm9cJ8/ANCwuF+JUKXLbxB98QAxKsS/ZLRhWn
	LlM1dapIWTHBM+dmLnZ5SgA+3O/UtG9d7+vC2f8jUY5UURvCGO+v8fGXtp6RkK0P4UybbaTkfVzb7
	3Tz8QUq1EIiShpXjylgpGLjOyG96dCmoRXJvWy0FxpCt9LrwUrZjRLjeYr1cOzopCd8P2hGrlB+xe
	BX/G/Q8SGbyfcq3Ulxcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUpBF-0000000CEHf-1lY9;
	Thu, 26 Jun 2025 16:10:29 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUoMV-0000000C5gn-3k8Y;
	Thu, 26 Jun 2025 15:18:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750951060; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KdSQNg44XY0aDBvJpvwXJ7hZnCNtm34c2MB+E5W50MAJcF15A5lW5tN0yLKUY4dmZ2hd7FBA8Wpq4zxs6C2QhOiv2UdiD2NMWACJVvae0vAdODDYmWZBRFNK/3vUso0LJLfoj5mQ38H3yK21dGM99BnFPKR0merCQtCf8Ln6vzA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750951060; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Mp0Gioriq+Cm97moLnLwRbcOGGhJvQyXKdRIuZwi4PY=; 
	b=E/O9TBewgZI2hhCliPHlup/Fk9aG+rWNhf4zGhfN1J4arLvGktzO1syiexEMAqfqti5smuv9j7zgN56ZDiqe6EDMZ3SeTTbhjaeMClSuY4B6zPJZMN55IVQ2iz5jJewf7AR5HlJyvwTqV73cjXVrUSQtl0PWhqcksyDl9kzfewY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750951060;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=Mp0Gioriq+Cm97moLnLwRbcOGGhJvQyXKdRIuZwi4PY=;
	b=ZYdfM9BPepva/BjM/XIknPqiog0Qholkn1PB6/NVAawm0j21pgk8/tUelTxG5GHP
	bHzBMPgrE/wVmBuBJMHy1Q2xWwNs4GVKCW7Z31rgzmlWmpUk0nV+RgPUkVsGxhGV9vb
	welB1E4xpdwqNvOD8sa0NtTdM+0T1P9h8L97Rh7g=
Received: by mx.zohomail.com with SMTPS id 1750951058759577.5834453049853;
	Thu, 26 Jun 2025 08:17:38 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 26 Jun 2025 17:16:49 +0200
Subject: [PATCH] arm64: defconfig: enable further Rockchip platform drivers
MIME-Version: 1.0
Message-Id: <20250626-rk3588-defconfig-v1-1-39a19a41c181@collabora.com>
X-B4-Tracking: v=1; b=H4sIAGBkXWgC/zXMQQqDMBCF4auEWXdAY6PiVYoLm0zsUEzaSSyCe
 PeGSpf/g/ftkEiYEgxqB6EPJ46hRH1RYB9TmAnZlQZdaVO1ukV5Nqbv0ZG3MXiesasNNZ13xlw
 tlNtLyPP2I2/j2ULvtcj5HOE+JUIbl4XzoAJtGf86jMfxBfiKZT2TAAAA
X-Change-ID: 20250626-rk3588-defconfig-715e37fd554c
To: Heiko Stuebner <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_081803_996728_CD5ADD51 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIFJLMzU4OCBTb0MsIGFuZCBpdHMgc2libGluZywgdGhlIFJLMzU4OFMsIGFyZSBzdXBwb3J0
ZWQgYnkgbWFpbmxpbmUKTGludXguIEhvd2V2ZXIsIHNvbWUgb2YgaXRzIFNvQyBkcml2ZXJzIGFy
ZSBjdXJyZW50bHkgbm90IGVuYWJsZWQgaW4gdGhlCmFybTY0IGRlZmNvbmZpZy4KCkVuYWJsZSBy
b2NrY2hpcC1kZmksIHJvY2tjaGlwLXJnYSwgYW5kIHRoZSBSb2NrY2hpcCBzcGVjaWZpYyBleHRl
bnNpb25zCnRvIEhhbnRybyBhcyBtb2R1bGVzLgoKVGhlc2UgZHJpdmVycyBhcmUgYWxzbyB1c2Vk
IG9uIG90aGVyIFJvY2tjaGlwIFNvQ3MgdGhhdCBtYWlubGluZQpzdXBwb3J0cywgbm90YWJseSBS
SzM1NjYvUkszNTY4LCBhcyB3ZWxsIGFzIFJLMzM5OS4KClN1Z2dlc3RlZC1ieTogTsOtY29sYXMg
Ri4gUi4gQS4gUHJhZG8gPG5mcmFwcmFkb0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBO
aWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgotLS0K
IGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcg
Yi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IGUwNzFmOGY0NTYwN2RiZmQ4ZTAw
YjkxNWIyNzk5OTk0OWVlMGZjODguLjhiNWVjYjIwZWQ2NDUwZmFhMGRhMTRhNmZkYjRjYjIyN2Ex
ZjczNWYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKKysrIGIvYXJj
aC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwpAQCAtMTc4OSwzICsxNzg5LDYgQEAgQ09ORklHX0NP
UkVTSUdIVF9TVE09bQogQ09ORklHX0NPUkVTSUdIVF9DUFVfREVCVUc9bQogQ09ORklHX0NPUkVT
SUdIVF9DVEk9bQogQ09ORklHX01FTVRFU1Q9eQorQ09ORklHX0RFVkZSRVFfRVZFTlRfUk9DS0NI
SVBfREZJPW0KK0NPTkZJR19WSURFT19ST0NLQ0hJUF9SR0E9bQorQ09ORklHX1ZJREVPX0hBTlRS
T19ST0NLQ0hJUD1tCgotLS0KYmFzZS1jb21taXQ6IDdlNWVlMTU4ODg2YmI3YzI0NGEzNDYyM2Rl
NmE0MTBiNjIwMjNkNjAKY2hhbmdlLWlkOiAyMDI1MDYyNi1yazM1ODgtZGVmY29uZmlnLTcxNWUz
N2ZkNTU0YwoKQmVzdCByZWdhcmRzLAotLSAKTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZy
YXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
