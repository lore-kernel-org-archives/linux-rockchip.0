Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07335C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B1D361164
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B1D361164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yNzeK+br0sPC9b5758nJZeSTdsYAE6fsr11mFgPk3uE=; b=H60qaAYsw6rDhb0GJy4tGuuGCL
	+6V0IDF8UdjTyKmrwY/HSG6Jb6DijLQbEKwxPeRvD4wKXa5kzAPFEAePPOHbfDNkg5zf9zkXX5kUk
	JLerfv/jYHaY8cJe1xzpmwWG6whM1wIdkbeTS/oqFlVdno0OKh4dLUQcGjBxJ1Z2NDWFSjKmfsryw
	XK61+gcs1rirPCRjJ9O+D9F7NzcSyzCMzxo4JrUK12b+hkddf1qHpApmXdmsLO0+kC8jKKuVnjRrP
	8bXkY/7nwM/zPBx+tmOlBUGaRReG63bGoo1n2v81V9LTm1YQaTlOo5c0PMpqHSeU5RkfOnUVO4bwU
	Ey+Zi9GQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPql-00D7w7-8r; Sun, 16 May 2021 23:07:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00D7nt-1U; Sun, 16 May 2021 23:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=qQ+Cib9jUXIVEERP/CF6JCeQMHSTnWcNOx070MORcpI=; b=xjVsrYPfrmSFayhWI19C0AhUi3
 yNHhdBYHBOddEu4CPGC5efubc4BRC/+btS2/dKttnKRHqx7SrIbr0G3tvh4rHrSElIr+gvLpb1LXr
 /Se4NTUr3TzCXGrHLI9RTJ8yhjFBKGQx9r5OS4WzcaTER4O2jlIjfNQefHG2omd6nIztPYVMbRS5I
 8mBlfwIWdr9Kkyj5xmkrc83toy8Got/OQpp3WqU7ugAm1eDjqgKpDDe0E6HZJd5NrBs90dowVjZS4
 ARzJzsG+8FSMyWhOinw0UAv8bMAPH9MFEWD04Qs+IcwTV74Dz/JW0g2byeBuu4gd9QeWo5+8s7Hjs
 Pr2f6gow==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq2-00DKcc-Rx; Sun, 16 May 2021 23:06:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 040CCAF28;
 Sun, 16 May 2021 23:06:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 0/9] arm64: dts: rockchip: Initial Toybrick TB-RK1808M0 support
Date: Mon, 17 May 2021 01:05:42 +0200
Message-Id: <20210516230551.12469-1-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160623_085286_9305EF58 
X-CRM114-Status: GOOD (  14.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28gZXQgYWwuLAoKSXQgc2VlbXMgbGludXgtcm9ja2NoaXAgbGlzdCBvbmx5IHNh
dyB0d28gUksxODA4IHBhdGNoZXMgZm9yIEFTb0MgaW4gMjAxOS4KRm9sbG93aW5nIHVwIG9uIGEg
U1VTRSBIYWNrd2VlayAyMCBwcm9qZWN0IG9mIG1pbmUsIGhlcmUncyBzb21lIHBhdGNoZXMgdGhh
dAphbGxvdyBtZSB0byBzdGFydCBib290aW5nIGludG8gdGhlIFRCLVJLMTgwOE0wIG1QQ0llIGNh
cmQncyBlTU1DLgoKVGVzdGVkIHVzaW5nIGl0cyBVU0IgYWRhcHRlciwgd2hpY2ggYWxsb3dzIHRv
IGNvbm5lY3QgYSBzZXJpYWwgY2FibGUgYW5kIGEKVVNCIHN0b3JhZ2UgZGV2aWNlIHRoYXQgSSBs
b2FkIGtlcm5lbCtkdGIgZnJvbS4gSXQgaGFzIGEgcmVzZXQgYnV0dG9uLCBhbmQKQ3RybCtDIGFs
bG93cyB0byBlbnRlciBhIFUtQm9vdCBwcm9tcHQgKHdpdGhvdXQgRUJCUi9VRUZJIHN1cHBvcnQg
dGhvdWdoKS4KClBhdGNoZXMgYXJlIGJhc2VkIG9uIHRoZSBzaGlwcGluZyB0b3licmljay5kdGIg
ZmlsZS4KaHR0cDovL3Qucm9jay1jaGlwcy5jb20vZW4vd2lraS5waHA/bW9kPXZpZXcmaWQ9MTEw
IGdpdmVzIGluc3RydWN0aW9ucyBmb3IKY29tcGlsaW5nIHNvdXJjZXMsIGJ1dCBubyBzb3VyY2Ug
ZG93bmxvYWQgb3IgbGluayBpcyBhY3R1YWxseSBwcm92aWRlZC4KCkkgZW5jb3VudGVyZWQgYSBo
YW5nOiBlYXJseWNvbiByZXZlYWxlZCBpdCBiZWluZyByZWxhdGVkIHRvIEtWTSBhbmQgdkdJQy4K
RGlzYWJsaW5nIEtWTSBpbiBLY29uZmlnIHdvcmtzIGFyb3VuZCBpdCwgYXMgZG9lcyByZW1vdmlu
ZyB0aGUgdkdJQyBpcnEgaW4gRFQuCkkndmUgYWxyZWFkeSB0cmllZCBsb3cgYW5kIGhpZ2ggZm9y
IHRoZSB2R0lDIGludGVycnVwdCwgc28gbm8gY2x1ZSB3aGF0IG1pZ2h0CmNhdXNlIGl0LiBPbiBh
biBtUENJZSBjYXJkIHdpdGggMSBHaUIgb2YgUkFNIEkgZmlndXJlZCBLVk0gaXMgbm90IGdvaW5n
IHRvIGJlCmEgbWFqb3IgdXNlIGNhc2UsIHNvIGlmIHdlIGZpbmQgbm8gb3RoZXIgc29sdXRpb24s
IHdlIGNvdWxkIGp1c3QgZGVsZXRlIHRoZQppbnRlcnJ1cHRzIHByb3BlcnR5IGluIGl0cyAuZHRz
LCBhcyBkZW1vbnN0cmF0ZWQgaGVyZS4KClRoZSBUQi05NkFJb1QgOTZCb2FyZHMgU29NIHdvdWxk
IGJlIGFub3RoZXIgUksxODA4IHBsYXRmb3JtIHNvbWVvbmUgbWlnaHQKdGVzdCB0aGVzZSBwYXRj
aGVzIG9uLiBGb3IgdGhlIFRCLVJLMTgwOFMwIFVTQiBzdGljayB0aGVyZSdzIGF0IGxlYXN0IG5v
CmRvY3VtZW50ZWQgd2F5IHRvIGFjY2VzcyBhIHNlcmlhbCBjb25zb2xlLgoKSGF2ZSBhIGxvdCBv
ZiBmdW4hCgpDaGVlcnMsCkFuZHJlYXMKCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpD
YzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmMgWnluZ2llciA8bWF6
QGtlcm5lbC5vcmc+CgpBbmRyZWFzIEbDpHJiZXIgKDkpOgogIGR0LWJpbmRpbmdzOiBhcm06IHJv
Y2tjaGlwOiBBZGQgUm9ja2NoaXAgUksxODA4IGFuZCBUQi1SSzE4MDhNMAogIGR0LWJpbmRpbmdz
OiBzZXJpYWw6IHNucHMtZHctYXBiLXVhcnQ6IEFkZCBSb2NrY2hpcCBSSzE4MDgKICBhcm02NDog
ZHRzOiByb2NrY2hpcDogUHJlcGFyZSBSb2NrY2hpcCBSSzE4MDgKICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogQWRkIFJvY2tjaGlwIFRCLVJLMTgwOE0wCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJr
MTgwOGstdG95YnJpY2stbTA6IFN1cHByZXNzIHZHSUMgaW50ZXJydXB0CiAgZHQtYmluZGluZ3M6
IG1tYzogcm9ja2NoaXAtZHctbXNoYzogQWRkIFJvY2tjaGlwIFJLMTgwOAogIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiByazE4MDg6IFByZXBhcmUgZU1NQyBub2RlCiAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IHJrMTgwOGstdG95YnJpY2stbTA6IEVuYWJsZSBlTU1DCiAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IHJrMTgwODogQWRkIENQVSBvcGVyYXRpbmcgcG9pbnRzCgogLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgIHwgICA1ICsKIC4uLi9iaW5kaW5ncy9tbWMvcm9j
a2NoaXAtZHctbXNoYy55YW1sICAgICAgICB8ICAgMSArCiAuLi4vYmluZGluZ3Mvc2VyaWFsL3Nu
cHMtZHctYXBiLXVhcnQueWFtbCAgICAgfCAgIDEgKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmsxODA4LmR0c2kgICAgICB8IDI3NiArKysrKysrKysrKysrKysrKysKIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazE4MDhrLXRveWJyaWNrLW0wLmR0cyB8ICA5NyArKysrKysKIDYgZmlsZXMg
Y2hhbmdlZCwgMzgxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazE4MDhrLXRveWJyaWNrLW0wLmR0cwoKLS0gCjIuMzEu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
