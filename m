Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0547A606A32A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 18:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zAHNfJdU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=vyuspz8P;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=DAH+8WQt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=VfpBiOYv+Ndl9g2QaZlJLhfeHgRyuJWZtCXKEBwmtqU=; b=zAHNfJdUiaBPMjZ56ZSZPvu7JS
	Qd/P/6C++4B306jzhZrIjbqbuw46xpnPgwzki01TWqqeja/5XTiZq91hpnXwc81wGLnAAkzwk27j2
	l+q7tHrwo6q51IKZKFKHN7HBBQ/UFuNl3AISXwNG8DyJA1VEjIyaV28B7qGVeMdEdyhJaWjs3aAGK
	rljkBN43mwjaXtqsl4Zhp/hl6HXKywuxCrW0o/Aot95oAd2xoMY2K2aaf4q0S1g4ACD0N1Hzu+d3Z
	UAcUS72vOkx9muZxLog7pilMfg9yuCqHhupcKbfuKBbyQXXyqK3BgE1ELjov8Ppytd/RXqYQSpTzh
	iKs6Y/AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVCcq-00000001aTr-42dy;
	Sun, 22 Nov 2026 18:49:20 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVCcn-00000001aSM-2kQk
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 18:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: MIME-Version: Message-ID: Date:
 Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1795373356;
 bh=JCpUg1xfHA0B+FJKSad8mtJycKAl0PWQ2N3i63PPRWk=;
 b=vyuspz8Pipb600icLX5GG5anyp9v532DDfU3FC9iWGNAHY/3Cp1CYYAZ9r40sbmawUlkXAscb
 lKzGswxR++5N18NMOw/jx5mFPatzl+BwHDe/UpHFzy9OfCaQBuVKkOTW6fiGEbMFIopKmwEhCRW
 uk9IVDQsQmkul2QWxqUdm1s2uMnXX3FQJ9dNN4AFSMqKJi3izGftY6YHgaVFZ4YmDdl3RdVqdcG
 y7N2K2sQad1MlDqnWdIxbnRGAaN0Kv1pdmWVmzoB8s3kQggKlwMkW8murQIrF11yneSOb6enPEI
 q19TeB4/t5VgJxPYtP3OYPQt9VMYQ8fwYYxaMGbST1tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: Content-Type: MIME-Version: Message-ID: Date:
 Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID; q=dns/txt;
 s=default; t=1795373356; bh=JCpUg1xfHA0B+FJKSad8mtJycKAl0PWQ2N3i63PPRWk=;
 b=DAH+8WQtv3B1fjXmqC7I9bbj5U3wdGMwMEO+ANdBtuFTV/dgZbosmB13U/cAKQzVOJFXKqxuu
 +DUQHDFiH+PeLOf6LIy/QHUSiMptbxZ8Cwqj3taozchX+Nbl/9Avihvx3FNz+NE1pazeGnmJ0NS
 Ag0xhC1C8q+aMQUKxg4Fh0c=
CFBL-Feedback-ID: 6b0338504432eb7754305b22:d73f4f47d606828bdc09bfd0c059efe0
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b0338504432eb7754305b22
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.19.37
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] ARM: dts: rockchip: Add ArmSoM Forge1 board
Date: Sun, 22 Nov 2026 18:45:28 +0000
Message-ID: <20261122184532.1300004-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_104917_741703_D4FA23F8 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhpcyBzZXJpZXMgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIEFybVNvTSBGb3JnZTEgWzFdLgoK
QXJtU29NIEZvcmdlMeKAi+KAiyBpcyBhbiBpbmR1c3RyaWFsLWdyYWRlIHByb2R1Y3QgcG93ZXJl
ZCBieSB0aGUg4oCL4oCLUkszNTA2Sgp0cmlwbGUtY29yZSBDb3J0ZXgtQTcgYXBwbGljYXRpb24g
cHJvY2Vzc29y4oCL4oCLLiBJdCBpcyBzcGVjaWZpY2FsbHkgZGVzaWduZWQKZm9yIGluZHVzdHJp
YWwgZ2F0ZXdheXMsIEhNSXMsIFBMQ3MsIGhhbmRoZWxkIFBPUyBkZXZpY2VzLCBhbmQgaG9tZQph
cHBsaWFuY2UgZGlzcGxheS9jb250cm9sIGFwcGxpY2F0aW9ucy4KClRoaXMgc2VyaWVzIGRlcGVu
ZHMgb24gdGhlIGJhc2UgU29DIGR0c2kgYWRkZWQgYXMgcGFydCBvZiB0aGUgc2VyaWVzCiJBUk06
IGR0czogcm9ja2NoaXA6IEFkZCBMdWNrZm94IEx5cmEgYm9hcmRzIiBbMl0uIFNpbWlsYXIgdG8g
Ym9hcmRzIGluCnRoYXQgc2VyaWVzIHRoaXMgYm9hcmQgdXNlIHRoZSByb2NrY2hpcCxyazM1MDYg
Y29tcGF0aWJsZS4KCk1haW5saW5lIFUtQm9vdCBzdXBwb3J0IGNhbiBiZSB0ZXN0ZWQgdXNpbmcg
YSBicmFuY2ggYXQgWzNdLCBpdCBjb250YWlucwpib2FyZCBzdXBwb3J0IHVzaW5nIHNhbWUgZGV2
aWNldHJlZSBmaWxlcyBleHRlbmRlZCB3aXRoIFVTQiBzdXBwb3J0LgoKWzFdIGh0dHBzOi8vZG9j
cy5hcm1zb20ub3JnL2FybXNvbS1mb3JnZTEKWzJdIGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8y
MDI2MTEyMjA2MDExNC43NzM2MjQtMS1qb25hc0Brd2lib28uc2UvClszXSBodHRwczovL2dpdC51
LWJvb3QtcHJvamVjdC5vcmcvdS1ib290L2NvbnRyaWJ1dG9ycy9rd2lib28vdS1ib290Ly0vY29t
bWl0cy9yazM1MDYKCkpvbmFzIEthcmxtYW4gKDIpOgogIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tj
aGlwOiBBZGQgQXJtU29NIEZvcmdlMQogIEFSTTogZHRzOiByb2NrY2hpcDogQWRkIEFybVNvTSBG
b3JnZTEgYm9hcmQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAg
ICAgfCAgIDUgKwogYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAg
IHwgICAzICstCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzUwNmotYXJtc29tLWZvcmdlMS5kdHMgICAg
fCAyMjkgKysrKysrKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDIzNiBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTA2ai1hcm1zb20tZm9yZ2UxLmR0cwotLS0KQmFzZWQtb246IDwyMDI2MTEy
MjA2MDExNC43NzM2MjQtMS1qb25hc0Brd2lib28uc2U+CgotLSAKMi41Ni4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
