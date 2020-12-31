Return-Path: <SRS0=lrNZ=GD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F088EC433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A060B223E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A060B223E0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OCYO+sykDAkIokohmjjzXht2aj/RGmg3+C9rWhULnmQ=; b=r348IUAHyW6GyFHMXKftj7LXC
	RtshIawr1ZOhUWiREYNLkdswSF4Zso94oI7RmU881jzqdP/WI5m+qW5Sfhpwk5yr8Nwkxv4NJmKho
	xyPErqyhj0Y8K+y4Dsp9oDGdvyZtd4f9RyGZkQxRcCjbOlTfPPZNXf+BRMyEkS+DTRvuNx9fVOiSH
	qrhuIJexQnFea1zNcrEse+kaPedjU52xYehOD3LV3QoRwqOOvE2idZA3sylRqfjF1z8E1KS7mUX3X
	itOAFjr3HKtWWCj+Ypg1LIX1pGJ5eMxs03e21QmBuMjEqSts+sxX0WOGBSXcJuYgghmRhQZ7roDO6
	4eaqVcaGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kuxVZ-0005lm-Es; Thu, 31 Dec 2020 12:56:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuxVV-0005k0-Ux
 for linux-rockchip@lists.infradead.org; Thu, 31 Dec 2020 12:56:46 +0000
Received: by mail-lf1-x12b.google.com with SMTP id l11so43972652lfg.0
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Dec 2020 04:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PTGZ/ohUNRbTjFJ7AFoie+4oyvbYi7rty13LxXQOIG0=;
 b=Lf0G4YG3IoEWxS/gyi5qqLOEhbBDzk3GDQcwcRoBjp5/J2rV6AJGVm4hHrn61odt0X
 zgAqspSfCw4J5dqcg6KBwNYyC5TTQgOKSLaHoItJ9I59qvb+HD6gvumWUjk+3G57WrhD
 1qYwV4YoXxF+xTVO1mnrMiMAxfkdKZng31iQLy7bsrpkII2LHWx+oiTh74p+87HB/J2t
 ncnN77q1Bgw+BACCZ3YtyRHxcalQXfO1D43mHQrT3RPaLrZFsd/GdKrX257dVfSd87KA
 JOmvyg16kUYstz7BYFk75PQr1ldN8wM4/1CL4kfW2pehU1KVowHEhKmtem7YkTK7jXgG
 u/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PTGZ/ohUNRbTjFJ7AFoie+4oyvbYi7rty13LxXQOIG0=;
 b=iJGiJNcyICRV5WIGGhUOn+gR5QDTt8TnmNZ1rO1uz9JnCBTU5SJijDjjEh1TD3RjXH
 OIxO+ZsaeMS+O4KdsNVT/sjTyabFbMjJ35Ym+wY6nPaRzolfrKjX7SwSOelLAIkNJLT5
 8QNYnD+HPXMu3k0EdcB2QI1cONxGRMAjsZ7SnYu3bbvuFE07AT+24rXYRH1bptOMv4Rg
 s58IVPVPy+a6J7LPVV2i3juEto7xRDHcC1xMe4xsgbq8WTIu+falZU35HbD2XCw68DwJ
 Qzz/bKCk6gV6sAy9PscKo+C1VpQ1wz/uzsZrkTmgq0LvAP9C7O8We2Yv6p0w6u0Mzw4W
 4saw==
X-Gm-Message-State: AOAM530DWViR+4gRlaFwQy0WGAYU2W97Mkq7DGE4am4zQ3HiihH42xld
 kKA5XsqDrDo7mj0P0cE3KI8=
X-Google-Smtp-Source: ABdhPJwsuh+AlYXEreFhiUSUiyUTRlt7hw+lOYUvGYBH1wcBcIVgcMWBYHI196hJYL1VzrrQYqVygw==
X-Received: by 2002:a2e:b5d9:: with SMTP id g25mr29328125ljn.471.1609419404582; 
 Thu, 31 Dec 2020 04:56:44 -0800 (PST)
Received: from localhost.localdomain (85-76-98-107-nat.elisa-mobile.fi.
 [85.76.98.107])
 by smtp.gmail.com with ESMTPSA id r201sm6230659lff.268.2020.12.31.04.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 04:56:44 -0800 (PST)
From: =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [RFC PATCH 3/3] arm64: dts: rockchip: use bus-scan-delay-ms
 workaround with RockPro64 PCIe
Date: Thu, 31 Dec 2020 14:52:14 +0200
Message-Id: <20201231125214.25733-4-nuumiofi@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231125214.25733-1-nuumiofi@gmail.com>
References: <20201231125214.25733-1-nuumiofi@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201231_075646_041275_CBE1442E 
X-CRM114-Status: GOOD (  11.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIGRlbGF5IGJlZm9yZSBSb2NrUHJvNjQgUENJZSBidXMgc2NhbiBhcyBhIHdvcmthcm91bmQg
Zm9yIHNvbWUgZGV2aWNlcwpjYXVzaW5nIGEgY3Jhc2ggbGlrZSBtYW55IExTSSBTQVMgY29udHJv
bGxlciBiYXNlZCBSQUlEIGNvbnRyb2xsZXJzIGFuZApob3N0IGJ1cyBhZGFwdGVycy4KCkFzIGEg
c2lkZSBlZmZlY3QgdGhpcyBzbG93cyBkb3duIHN5c3RlbSBzdGFydHVwIGJ5IHRoZSBhbW91bnQg
b2YgZGVsYXkKZXZlbiB3aXRoIGRldmljZXMgdGhhdCBkb24ndCBuZWVkIHRoZSBkZWxheSB0byB3
b3JrLgoKU2lnbmVkLW9mZi1ieTogSmFyaSBIw6Rtw6Rsw6RpbmVuIDxudXVtaW9maUBnbWFpbC5j
b20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKaW5kZXggNmU1NTNm
ZjQ3NTM0Li4yNTZjMzU3YzA2OWUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpCkBAIC01NDYsNiArNTQ2LDcgQEAgJnBjaWUwIHsK
IAludW0tbGFuZXMgPSA8ND47CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJs
LTAgPSA8JnBjaWVfcGVyc3Q+OworCXJvY2tjaGlwLGJ1cy1zY2FuLWRlbGF5LW1zID0gPDExMDA+
OwogCXZwY2llMTJ2LXN1cHBseSA9IDwmdmNjMTJ2X2RjaW4+OwogCXZwY2llM3YzLXN1cHBseSA9
IDwmdmNjM3YzX3BjaWU+OwogCXN0YXR1cyA9ICJva2F5IjsKLS0gCjIuMjkuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
