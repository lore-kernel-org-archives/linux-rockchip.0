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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BE3DC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3167223E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3167223E0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BIGsPucBQzu32NItBtX8cOFRpVLIapNpI6dOT+x9vvU=; b=NYs6ymBR6bUL4Sh+aZZ56J7yS
	xHl+47AH5Fa1M9a4aynd64AADdsoQ3B/7rDKUx2d6M2oRl5xd3I5vgCWnjfTm34mQvd9HokCPNwk+
	8KB/xQWigBoJwnLaANbx8emNslils6J9JqMu4I0mvGt0o0mLfzrB6XAuMbCj+UEl0AxC1Mt7Yn4MC
	uYIGjIT9Rc2lh25Ad/UIxsd5HdR03i8TrPwUMIe+uPFa17cITJpsvploES8OZmcjiOMD3W3A/P1r4
	UMtvb3st9io2WyNRghTrE/oRhVZFCDFbEkKTf1qjIM0OK9ku9vSacxwe2DWPd+g/t879Ww69YlwNh
	qB+CQS9ug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kuxVY-0005lH-Dm; Thu, 31 Dec 2020 12:56:48 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuxVU-0005jL-DN
 for linux-rockchip@lists.infradead.org; Thu, 31 Dec 2020 12:56:45 +0000
Received: by mail-lf1-x129.google.com with SMTP id o17so43909242lfg.4
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Dec 2020 04:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0fBv2gpwapqGxc4UK93YsXY43KDSuwDEMOo2qzk7zYQ=;
 b=cacK2IEW77bys+SQJVCBhRtYkSAF0cwGhG3GelH7XRMPehnLWlQClM9v5WDgj7a2ox
 xTNDJaU0h1iBZ/x/oQKWFzqNppks2r62ysNcyEXYlPKJFPu1rxhPgcHtWKzZDU2uhuAz
 HEERNFCx7hETSdItud9NdD7Rdvos/vjHKnmbfcVBtZgXO4GtdlOrEP8FyqzPA7GovKPt
 oLTiqpfSUgMscXfOdIAtbhAGeP7KoA+xCNFlq1iH0L6ywM2l1SG66RJbC91R1FkQ3rIw
 DrMVhZe58RDlHpnxEcFgprPJrGLztGkimnkdBUYPIzFQ9QN9lykdwprxqYjs3ecA4Z/J
 gxdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0fBv2gpwapqGxc4UK93YsXY43KDSuwDEMOo2qzk7zYQ=;
 b=Qg6o3WXNVaIjDziQcsFqFBrCrNtZkYk1ZmWGGTTOi2hg7kCD9MYwqsDzrBeGHid2sY
 3BVkNjRVuJ23x9lXM0YbgVEYPoHYdboTpLN9Yxy3Sm7hIKWWI9L4AkpsSATlLThoBaWw
 gwVgpRSmWrNnpxMk8XksPcgFXgNNjUp2HifEMw0phBtyrLVegch6vQdGPgaK6wXz4s6A
 OKrXm+KdVJ5RgLiuERD8eZu+NsY3cS9jwjivdcH7atqeuBKDR8uWOW2byoUSVkA5aYEW
 Ndi1jli3XsvjLuaBosoGgkRGAuzL3PSfe0gYKSo5IWcmLQ++2cJszFuCny3AVeooyPSB
 K7zQ==
X-Gm-Message-State: AOAM530uafh2sKy6u0SXnEPHAR5+KYV8tDKaclRNRcFlyZgWkKgdT9k/
 VhKSNi8DuspwxDkID77JTBU=
X-Google-Smtp-Source: ABdhPJytSeX7EP+EU6g5Sis28jEYMyZJYLpLxGKAemzBn5XLYv0gEYWx4YEFfQ/33Dzzrm2KvqU3/A==
X-Received: by 2002:a05:651c:11c4:: with SMTP id
 z4mr29662150ljo.443.1609419403419; 
 Thu, 31 Dec 2020 04:56:43 -0800 (PST)
Received: from localhost.localdomain (85-76-98-107-nat.elisa-mobile.fi.
 [85.76.98.107])
 by smtp.gmail.com with ESMTPSA id r201sm6230659lff.268.2020.12.31.04.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 04:56:42 -0800 (PST)
From: =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [RFC PATCH 2/3] dt-bindings: PCI: rockchip: document
 bus-scan-delay-ms workaround property
Date: Thu, 31 Dec 2020 14:52:13 +0200
Message-Id: <20201231125214.25733-3-nuumiofi@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231125214.25733-1-nuumiofi@gmail.com>
References: <20201231125214.25733-1-nuumiofi@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201231_075644_464336_7CA8F116 
X-CRM114-Status: GOOD (  11.69  )
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

TmV3ICJyb2NrY2hpcCxidXMtc2Nhbi1kZWxheS1tcyIgcHJvcGVydHkgY2FuIGJlIHVzZWQgdG8g
c2V0IGEgZGVsYXkKYmVmb3JlIFBDSWUgYnVzIHNjYW4gYXMgYSB3b3JrYXJvdW5kIGZvciBzb21l
IHByb2JsZW1hdGljIGRldmljZXMgY2F1c2luZwphIGNyYXNoIGluIGJ1cyBzY2FuLgoKU2lnbmVk
LW9mZi1ieTogSmFyaSBIw6Rtw6Rsw6RpbmVuIDxudXVtaW9maUBnbWFpbC5jb20+Ci0tLQogRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1wY2llLWhvc3QudHh0
IHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLXBjaWUtaG9zdC50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLXBjaWUt
aG9zdC50eHQKaW5kZXggYWYzNGM2NTc3M2ZkLi4zOTRiZGY1NjJkNTggMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtcGNpZS1ob3N0LnR4
dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLXBj
aWUtaG9zdC50eHQKQEAgLTU3LDYgKzU3LDggQEAgT3B0aW9uYWwgUHJvcGVydHk6CiAJdXNpbmcg
MjRNSHogT1NDIGZvciBSQydzIFBIWS4KIC0gZXAtZ3Bpb3M6IGNvbnRhaW4gdGhlIGVudHJ5IGZv
ciBwcmUtcmVzZXQgR1BJTwogLSBudW0tbGFuZXM6IG51bWJlciBvZiBsYW5lcyB0byB1c2UKKy0g
cm9ja2NoaXAsYnVzLXNjYW4tZGVsYXktbXM6IGRlbGF5IGJlZm9yZSBQQ0llIGJ1cyBzY2FuIGlu
IG1pbGxpc2Vjb25kcy4KKwlQcm92aWRlcyBhIHdvcmthcm91bmQgZm9yIHNvbWUgZGV2aWNlcyBj
YXVzaW5nIGEgY3Jhc2ggaW4gYnVzIHNjYW4uCiAtIHZwY2llMTJ2LXN1cHBseTogVGhlIHBoYW5k
bGUgdG8gdGhlIDEydiByZWd1bGF0b3IgdG8gdXNlIGZvciBQQ0llLgogLSB2cGNpZTN2My1zdXBw
bHk6IFRoZSBwaGFuZGxlIHRvIHRoZSAzLjN2IHJlZ3VsYXRvciB0byB1c2UgZm9yIFBDSWUuCiAt
IHZwY2llMXY4LXN1cHBseTogVGhlIHBoYW5kbGUgdG8gdGhlIDEuOHYgcmVndWxhdG9yIHRvIHVz
ZSBmb3IgUENJZS4KQEAgLTEwNiw2ICsxMDgsNyBAQCBwY2llMDogcGNpZUBmODAwMDAwMCB7CiAJ
CSA8JmNydSBTUlNUX1BDSUVfUE0+LCA8JmNydSBTUlNUX1BfUENJRT4sIDwmY3J1IFNSU1RfQV9Q
Q0lFPjsKIAlyZXNldC1uYW1lcyA9ICJjb3JlIiwgIm1nbXQiLCAibWdtdC1zdGlja3kiLCAicGlw
ZSIsCiAJCSAgICAgICJwbSIsICJwY2xrIiwgImFjbGsiOworCXJvY2tjaGlwLGJ1cy1zY2FuLWRl
bGF5LW1zID0gPDExMDA+OwogCS8qIGRlcHJlY2F0ZWQgbGVnYWN5IFBIWSBtb2RlbCAqLwogCXBo
eXMgPSA8JnBjaWVfcGh5PjsKIAlwaHktbmFtZXMgPSAicGNpZS1waHkiOwotLSAKMi4yOS4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
