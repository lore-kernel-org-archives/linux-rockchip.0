Return-Path: <SRS0=BUd0=GE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9FBFC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jan 2021 15:20:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DA2D21D7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jan 2021 15:20:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DA2D21D7A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nGo/wJ4bpLmqiuxt04XoAct2p7UtqSWRMcRs2TTsTHY=; b=XnQnuh5Xo4wQDgnYGBjGR0Rg47
	gkGyOxppL8dlT0bAwfM7MKxRASMMwu7VOrQAlTR/rgeYomw4byh0eT598GjlNMUZhAHZdNwqxFfh/
	/H8Xzk35/PE0K3EHkuO+5pRJ+VjW5GEyOoP1Q5Ac8QLxVE5O79J8FNzEoDRzPEsYAMCT2kRP5vi1w
	SVbUwxDuJQvpmWWVTawCy+lEia1f9qSoEgdlbF/KGOh0KzlRySe3nAiQwMidVz53PBzD1f9yF7RG6
	NEvqNsfyJ5qJ2+JjjuO0WiLewdv9hP8mqwE3MctuV0dZE8o15OUWAe7OqDHanKMUEQA3/UEC4Elda
	F7XZ+CBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kvMED-0003yb-7R; Fri, 01 Jan 2021 15:20:33 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvME9-0003wl-RC
 for linux-rockchip@lists.infradead.org; Fri, 01 Jan 2021 15:20:31 +0000
Received: by mail-lf1-x12f.google.com with SMTP id b26so49409447lff.9
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Jan 2021 07:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FxJ4CaUCzQKr3Z+f/AnYz0EiEDZVFwYoX3j/dMbaFLU=;
 b=rW4a0O+XBnlRSL17fk6Kuo2BG08f0EFTeJMwgN2vcYcX/wc09IEjisZ5dY3nbPJwMu
 /oRPMklWNcNo6+tULE/ElMbKi/jS6Ro/6OPgsKC+Q1Mks41D6AqOnJbDJVyReX2owmsV
 0KVNZB9PFhQiUZ+ARSM+NvIVYVIUwnbZoqhAoOX+6sZ1WVUBD6NZEheLDkmZGfWLHjmz
 zPTvpuRNq1OYeaZ1pClCfQX4mf7FKaIX/uWaMauOg0rexQMXCL/SXORSnNJxLyY7t7Ih
 gzFMEAnH6ibztIItC54XVTGcDG5LJy3asY1WFsKTx81VaVeIi42vHD9Vo/V/cZ4uHdjl
 vcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FxJ4CaUCzQKr3Z+f/AnYz0EiEDZVFwYoX3j/dMbaFLU=;
 b=j1jkNKtZJq3pyn7tPTVvGFfYmAr7PwRws1YDojqQNJrsZebMKmRmedPIrR12IhzjW3
 y17an4+tHkRHBruYcBLqPGHto5xduQsLgY3wa/sZwPZJDnaicINDeIl9C8THg2cLymT+
 wWuTWzP3P3/vlNTkpzYzDgHCzDlRaotO4GjOpv9Y+kj8XwECCh81JlJG8mVraJRHvS0L
 XDCxwcz5Koyxkc//cDFCN6tVjBr+L+DdPGmZhdcS3I8Xsz4Bbo3+h/EIiQGMOk8vNtoc
 uydPPSiqCcP2wWgvP94vtVW5bK7P73auoTwLPFyGcimtWW63xPQ+irnPYvWaXNOrcvxG
 lo5w==
X-Gm-Message-State: AOAM531VPWt3IvHuul/RvilL6TL3GbUhGGpg7nDnrLWEA/2o5yd8TZcw
 CJR/9kGz80uuu7Ij2/qylg0=
X-Google-Smtp-Source: ABdhPJxS7tGZWyA8qrh8aAd4at1+0M4MzosTMvOPAdCJFp20n05PsclbHi+A7pyulQiJrlKr25GWfQ==
X-Received: by 2002:a2e:780d:: with SMTP id t13mr29374557ljc.144.1609514426763; 
 Fri, 01 Jan 2021 07:20:26 -0800 (PST)
Received: from localhost.localdomain (85-76-98-107-nat.elisa-mobile.fi.
 [85.76.98.107])
 by smtp.gmail.com with ESMTPSA id y24sm6129940ljm.125.2021.01.01.07.20.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Jan 2021 07:20:26 -0800 (PST)
From: =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [RFC PATCH] arm64: dts: rockchip: remove unused bus-scan-delay-ms
 from Pinebook Pro
Date: Fri,  1 Jan 2021 17:18:45 +0200
Message-Id: <20210101151845.766986-1-nuumiofi@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210101_102029_947241_6ED305B1 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>,
 Tobias Schramm <t.schramm@manjaro.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

YnVzLXNjYW4tZGVsYXktbXMgcHJvcGVydHkgaXMgbm90IHVzZWQgYW55d2hlcmUgaW4gdGhlIGNv
ZGUuIFRoaXMgd2FzIGZvdW5kCndoaWxlIHByZXBhcmluZyBhIHdvcmthcm91bmQgcGF0Y2ggdXNp
bmcgZXF1YWxseSBuYW1lZCBwcm9wZXJ0eSBmb3IKUm9ja1BybzY0IFsxXSB3aGljaCB1c2VzIHRo
ZSBzYW1lIFJLMzM5OSBTb0MgYXMgUGluZWJvb2sgUHJvLgoKYnVzLXNjYW4tZGVsYXktbXMgbWln
aHQgaGF2ZSBiZWVuIHBpY2tlZCB0byBQaW5lYm9vayBQcm8gRFQgZnJvbSBteSBlYXJsaWVyCnBh
dGNoZXMgZm9yIFJvY2tQcm82NCBjdXN0b20ga2VybmVscyBsaWtlIFsyXSBvciBbM10uCgpbMV0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIwMTIzMTEyNTIxNC4yNTczMy0xLW51dW1pb2Zp
QGdtYWlsLmNvbQpbMl0gaHR0cHM6Ly9naXRodWIuY29tL251dW1pby9saW51eC1rZXJuZWwvY29t
bWl0LzcxMDU3MGI4YWQ4MDliZjNmMTYyZjgzMjYKWzNdIGh0dHBzOi8vZ2l0aHViLmNvbS9udXVt
aW8vcnA2NC1saW51eC1tYWlubGluZS1rZXJuZWwvY29tbWl0LzJiZmM3ZDM5N2YzCgpTaWduZWQt
b2ZmLWJ5OiBKYXJpIEjDpG3DpGzDpGluZW4gPG51dW1pb2ZpQGdtYWlsLmNvbT4KLS0tCgpIZWxs
byBhbGwsCgpTZW5kaW5nIHRoaXMgYXMgUkZDIGJlY2F1c2UgSSBkb24ndCBoYXZlIFBpbmVib29r
IFBybyB0byB0ZXN0IHRoZSBjbGVhbmVkCnVwIERUIGFuZCBjYW4gb25seSBjaGVjayB0aGF0IHRo
ZSBjaGFuZ2UgZG9lc24ndCBicmVhayB0aGUgYnVpbGQuIEkgZGlkIG5vdApmaW5kIGFueSBjb2Rl
IHJlZmVyZW5jZSB0byByZW1vdmVkIHByb3BlcnR5IGFuZCBiZWxpZXZlIGl0IGhhcyBiZWVuCmFj
Y2lkZW50YWxseSBjb3BpZWQgb3ZlciwgYnV0IHRoZXJlIGNvdWxkIGFsd2F5cyBiZSBzb21lIHN1
cnBpc2UuCgpUZXN0aW5nIGFuZCBjb21tZW50cyBob3cgdG8gcHJvY2VlZCBhcmUgd2VsY29tZS4K
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzIHwg
MSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVib29rLXByby5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzCmluZGV4IDA2ZDQ4MzM4
YzgzNi4uOTU4OTY0NjgyNGJmIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXBpbmVib29rLXByby5kdHMKQEAgLTc4OCw3ICs3ODgsNiBAQCAmcGNpZV9w
aHkgewogfTsKIAogJnBjaWUwIHsKLQlidXMtc2Nhbi1kZWxheS1tcyA9IDwxMDAwPjsKIAllcC1n
cGlvcyA9IDwmZ3BpbzIgUktfUEQ0IEdQSU9fQUNUSVZFX0hJR0g+OwogCW1heC1saW5rLXNwZWVk
ID0gPDI+OwogCW51bS1sYW5lcyA9IDw0PjsKCmJhc2UtY29tbWl0OiBmNmUxZWExOTY0OTIxNjE1
NjU3NmFlYWZhNzg0ZTNiNGNlZTQ1NTQ5Ci0tIAoyLjI5LjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
