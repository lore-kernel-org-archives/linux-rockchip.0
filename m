Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AB9ECCD183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 16:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlSInk/XBpNv2eViSU+GyZINqGT/I4whgaj6B5MG1rM=; b=nbuqfSYDCv2wRy
	BU1AMeS4agNe70fLo2B0J181+6xyzVRisUQaAVDi5qcEbN4C8nqh5Wb5Ml9JwvMxgYxnu6F8TWxN7
	1TknKEmJu9RaRZuX2Dc6UzIp6vWcGw9OAD573YF2tGaLqJo6k1BiG1p6MB1UYrT9mUqN9HQ8sq9qV
	MQ5POK8lM1aDG3XgZmEpsqlI0lUa9e9jMXA1/7S7z4UtL6wSCGkRsDSGaKeyopXkiRu1F3Sd452J5
	7mE4fCYxg3UVkDFBnH/nSwWoytLRS3czItjZDTpb6dkEqt3LHDpx83BeBPXfFdTHOol79JHZH4Kpf
	hmb0z59SSpB1Jfj5MRvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qbl-00000005NnV-2N5h;
	Thu, 16 Oct 2025 16:13:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qbj-00000005Nlk-0Qis;
	Thu, 16 Oct 2025 16:13:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LzGjHDS+xi2DlOMgWkM/K6tjShNEfen6Tw2JtH1Zhpc=; b=YO7nCjUg0lOAZ06BrtQN/foq60
	FRtIzvKAyVc0aBUZyVXPR9TqlhFdGo8LvIxQRaqIhOqycd9p6SPR3a8/vwKfzYKtXQeO+vabIVSO0
	WdHaXqKIuitJJcZPsftdcGhW0VNlXBZ2vtJT7eL7dquQS6nwiQqzmOcK56gHaF0fAvY4RTgi+bu+/
	9SpIu41HlD1P3odwoVMBc9TDjO1QQS4FYfpvBvF7foTXoiCM26Vn69pGpLdVHYxpnvnydl9j6r/kF
	Z1CkI2SWYF1id0oUtmlSV2YVuG8/SA/inubLbfJUDQ0eNEkKV3edTuyjHxW9noahkCpP53opn6m+N
	LoXcGbQw==;
Received: from i53875b4f.versanet.de ([83.135.91.79] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v9Qbf-0001Mr-58; Thu, 16 Oct 2025 18:13:35 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 finley.xiao@rock-chips.com, zhangqing@rock-chips.com,
 sugar.zhang@rock-chips.com, huangtao@rock-chips.com
Subject: Re: [PATCH v1 2/2] pmdomain: rockchip: Add support for RV1126B
Date: Thu, 16 Oct 2025 18:13:34 +0200
Message-ID: <2176528.bB369e8A3T@diego>
In-Reply-To: <20251016134103.294636-3-finley.xiao@rock-chips.com>
References: <20251016134103.294636-1-finley.xiao@rock-chips.com>
 <20251016134103.294636-3-finley.xiao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_091339_159687_308AD7A3 
X-CRM114-Status: GOOD (  12.60  )
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

QW0gRG9ubmVyc3RhZywgMTYuIE9rdG9iZXIgMjAyNSwgMTU6NDE6MDMgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBGaW5sZXkgWGlhbzoKPiBBZGQgY29uZmlndXJhdGlvbiBh
bmQgcG93ZXIgZG9tYWlucyBmb3IgUlYxMTI2IFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGaW5s
ZXkgWGlhbyA8ZmlubGV5LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4gLS0tCgpbLi4uXQoKPiBAQCAt
MTEwNCw2ICsxMTIyLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2lu
Zm8gcnYxMTI2X3BtX2RvbWFpbnNbXSA9IHsKPiAgCVtSVjExMjZfUERfVVNCXQkJPSBET01BSU5f
UlYxMTI2KCJ1c2IiLCBCSVQoOSksIEJJVCgxNSksIEJJVCgxNSksICBmYWxzZSksCj4gIH07Cj4g
IAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2RvbWFpbl9pbmZvIHJ2MTEyNmJfcG1f
ZG9tYWluc1tdID0gewo+ICsJCQkJCSAgICAgIC8qIG5hbWUgICAgcHdyICAgICByZXEgICAgICB3
YWtldXAgKi8KPiArCVtSVjExMjZCX1BEX05QVV0JPSBET01BSU5fUlYxMTI2QigibnB1IiwgIEJJ
VCgwKSwgQklUKDgpLCAgZmFsc2UpLAo+ICsJW1JWMTEyNkJfUERfVkRPXQk9IERPTUFJTl9SVjEx
MjZCKCJ2ZG8iLCAgQklUKDEpLCBCSVQoOSksICBmYWxzZSksCj4gKwlbUlYxMTI2Ql9QRF9BSVNQ
XQk9IERPTUFJTl9SVjExMjZCKCJhaXNwIiwgQklUKDIpLCBCSVQoMTApLCBmYWxzZSksCj4gK307
Cj4gKwoKc2FtZSBjbGFyaWZpY2F0aW9uIG5lZWRlZCBhcyBmb3IgcGF0Y2ggMSAuLi4gaXMgaXQg
YWlpc3AgKHdpdGggMiAiaSIpPwpBcyBkZXNjcmliZWQgZXZlcnl3aGVyZSBpbiB0aGUgVFJNLgoK
T3RoZXIgdGhhbiB0aGF0IEkgY2hlY2tlZCB0aGUgYml0cyBhbmQgcmVnaXN0ZXJzIGFnYWluc3Qg
dGhlIFRSTSwgc28KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
PgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
