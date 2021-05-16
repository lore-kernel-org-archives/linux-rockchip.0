Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24F3C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4769B6100A
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4769B6100A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yRBzcJ71wlEXnQKEGzsfkiMGwpQA9lJM2qPnXe7FFZM=; b=mD4Ho8lqFW8C2HxBYlSKEtEwP
	TA5djHbVNOa6yygqaRyauCXZwJmfp4ngtkBJWlH/KdSzFnsBaP4SRR0Q2jyLhX9ZdQ7TVwXly/yKb
	sKq8Z0h6I6QkTbA+0LqEjwl5lq90ikSfiuc6Jphu0QOeaPYVwSH3JkWQf+ECJoPv+KEvJHhkWLO/a
	Ib8N0PHOmEpeAkqqB1APjwZjuWKk7Fx0X3nwgCUXYViDSF0N66FlOJlVNcxl8UzB7kjXUwUvScE91
	eJ0dhYcAscZSiBzzpmrcj4YjjBREl7Lej0mC1q/c8sTrL3uGOBqxaog4n6bKD7KsOxM14BrJ01Xs/
	3o4pJzvGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPsd-00D8ik-Lv; Sun, 16 May 2021 23:09:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq9-00D7od-97; Sun, 16 May 2021 23:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=QpagjBDnee6mgrVuQlrpEoBRQ+UPTqN8ipLXUovCG/Q=; b=B6KTVXeRAl/4fbiBBzFAmlGTtD
 su4wioSC3BQBpe4UmBoiEfObRKZVm9ZcIZmYGWBG5lD1IXqAqg3ZCF/AEBLQ66T/mWb6dTrQYC3xh
 QtHgr+Fp79BEJXptFr2yl3ZDiqsJE8KrU7V3rFZ2bVKVF3BxOG3+YGzWM4lLJdzvyoJNtK5JVGuSn
 U0fU8+NYSS9vZ2hjoXiEeN7VVrGQHrs9SntCFd2IpYaOK8hmhmILl6W/Ma13VulaCz1xra1SxuQqO
 agdSbej9H/ql6/P5tRMEPK88unoSqPiJqlm5dAkFHg5uNRl3Lu+bZ9jH0wgPp8i5EI6ynR7I2try/
 UvuDZt3A==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00DKeO-Gh; Sun, 16 May 2021 23:06:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 04EC7B1FE;
 Sun, 16 May 2021 23:06:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH 9/9] arm64: dts: rockchip: rk1808: Add CPU operating points
Date: Mon, 17 May 2021 01:05:51 +0200
Message-Id: <20210516230551.12469-10-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160626_728492_A43718A0 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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

QXNzb2NpYXRlIG9wZXJhdGluZyBwb2ludHMgd2l0aCBib3RoIENQVSBub2Rlcy4KRGF0YSBzb3Vy
Y2UgaXMgdGhlIHNoaXBwaW5nIFRCLVJLMTgwOE0wIERUQi4KClNpZ25lZC1vZmYtYnk6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMTgwOC5kdHNpIHwgNjQgKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmsxODA4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MTgwOC5kdHNpCmluZGV4IGI0YTcxYzVjOGJlNy4uODI2MTRjNDdmMTQ0IDEwMDY0NAotLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmsxODA4LmR0c2kKQEAgLTMyLDcgKzMyLDEwIEBAIGNwdTA6IGNw
dUAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hMzUiOwogCQkJcmVnID0gPDB4MCAw
eDA+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWR5bmFtaWMtcG93ZXItY29lZmZp
Y2llbnQgPSA8NzQ+OworCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+
OwogCQkJY3B1LWlkbGUtc3RhdGVzID0gPCZDUFVfU0xFRVA+OworCQkJI2Nvb2xpbmctY2VsbHMg
PSA8Mj47CiAJCX07CiAKIAkJY3B1MTogY3B1QDEgewpAQCAtNDAsNiArNDMsNyBAQCBjcHUxOiBj
cHVAMSB7CiAJCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTM1IjsKIAkJCXJlZyA9IDwweDAg
MHgxPjsKIAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7CisJCQlvcGVyYXRpbmctcG9pbnRzLXYy
ID0gPCZjcHUwX29wcF90YWJsZT47CiAJCQljcHUtaWRsZS1zdGF0ZXMgPSA8JkNQVV9TTEVFUD47
CiAJCX07CiAKQEAgLTU3LDYgKzYxLDY2IEBAIENQVV9TTEVFUDogY3B1LXNsZWVwIHsKIAkJfTsK
IAl9OwogCisJY3B1MF9vcHBfdGFibGU6IGNwdTAtb3BwLXRhYmxlIHsKKwkJY29tcGF0aWJsZSA9
ICJvcGVyYXRpbmctcG9pbnRzLXYyIjsKKwkJb3BwLXNoYXJlZDsKKworCQlvcHAtNDA4MDAwMDAw
IHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NDA4MDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQg
PSA8NzUwMDAwIDc1MDAwMCA5NTAwMDA+OworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47
CisJCQlvcHAtc3VzcGVuZDsKKwkJfTsKKworCQlvcHAtNjAwMDAwMDAwIHsKKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8NjAwMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQgPSA8NzUwMDAwIDc1MDAw
MCA5NTAwMDA+OworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47CisJCX07CisKKwkJb3Bw
LTgxNjAwMDAwMCB7CisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgxNjAwMDAwMD47CisJCQlvcHAt
bWljcm92b2x0ID0gPDc1MDAwMCA3NTAwMDAgOTUwMDAwPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMg
PSA8NDAwMDA+OworCQl9OworCisJCW9wcC0xMDA4MDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRz
LyA2NCA8MTAwODAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDc1MDAwMCA3NTAwMDAgOTUw
MDAwPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+OworCQl9OworCisJCW9wcC0xMjAw
MDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTIwMDAwMDAwMD47CisJCQlvcHAtbWlj
cm92b2x0ID0gPDgwMDAwMCA4MDAwMDAgOTUwMDAwPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8
NDAwMDA+OworCQl9OworCisJCW9wcC0xMjk2MDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8MTI5NjAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgOTUwMDAw
PjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+OworCQl9OworCisJCW9wcC0xNDE2MDAw
MDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTQxNjAwMDAwMD47CisJCQlvcHAtbWljcm92
b2x0ID0gPDg1MDAwMCA4NTAwMDAgOTUwMDAwPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAw
MDA+OworCQl9OworCisJCW9wcC0xNTEyMDAwMDAwIHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8
MTUxMjAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0ID0gPDg3NTAwMCA4NzUwMDAgOTUwMDAwPjsK
KwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+OworCQl9OworCisJCW9wcC0xNjA4MDAwMDAw
IHsKKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTYwODAwMDAwMD47CisJCQlvcHAtbWljcm92b2x0
ID0gPDkwMDAwMCA5MDAwMDAgOTUwMDAwPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+
OworCQl9OworCX07CisKIAlhcm0tcG11IHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWEz
NS1wbXUiOwogCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjI4IElSUV9UWVBFX0xFVkVMX0hJR0g+
LAotLSAKMi4zMS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
