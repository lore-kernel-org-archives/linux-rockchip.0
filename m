Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33E9606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 18:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Tk7AYvUf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=BAy9k8GH;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=j2P8wc0z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kPyQjJQKkPO2skyTRa42ZWanidifDL+kawNUAQAPWKc=; b=Tk7AYvUfXMvkoBE+C47SHON3FI
	B1riOBQW6VEjcNwDRYLgqERV+Olt8Sns6l9H5/NoVRc74HvKNWRRgeIe8u1mBa9jZquoeVbQErBYE
	5l2RrNdRTVRaAmGyzlNwEvB+lxmHvMaQC9T7sYN+cXuErw0TQwGRqnJdC+kIGfc93K6E4tHEaqFdd
	Awt4oZlspOt8f/2BaZP4ntFVwdjvKSPorZwKTWwih7WG35uUhHs55+THjLWbVBklQd6o9JqLyFg+u
	zinTABmpoDXb5dDGxry+fb57Tu0MMJxBMhZk+tz4YC48xbohpI0ykHbdPue2SQJ+c/Q4bR6JoD9V9
	O9hgggiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVCcq-00000001aTl-3cht;
	Sun, 22 Nov 2026 18:49:20 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVCcn-00000001aSL-2kZr
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 18:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: MIME-Version: References:
 In-Reply-To: Message-ID: Date: Subject: Cc: To: From: CFBL-Address:
 CFBL-Feedback-ID; q=dns/txt; s=fe-e1b5cab7be; t=1795373356;
 bh=S38kz8DMqbgEZVQZq3PeZnDsXM7CwdLW30hq9lNw370=;
 b=BAy9k8GH0w2RY02NR0u2ucsBMf0kAC/X2JSwIgExxiQfUEsY7NPNrVkWgxIIIWAKn4hsenoXY
 43mzwDiH4BnjTZ0+YlDdcfoULP8MsR1TVj3pf3I3IaCxYdetGCTgZOTzBai8Lj7WkMQH8WwkVhO
 kIxctpWB5q1j3Pzvc/TsSfjA/IbUMqrLu01oo+ZlUd1TzRLNhgcb3HP75m4Ox4/NcRoHzH2EvgX
 BtKaMTVRSxFH/QxwnNPzLI7kDgHT+Ird1FnYgJcQrEU4+1G3fUlUvr89GxUEQ+x8DEnWWp3anbj
 ns2NhGIchC4986IC9yXbu2pyt61aOek+0fq3jbM6iIcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: Content-Type: MIME-Version: References:
 In-Reply-To: Message-ID: Date: Subject: Cc: To: From: CFBL-Address:
 CFBL-Feedback-ID; q=dns/txt; s=default; t=1795373356;
 bh=S38kz8DMqbgEZVQZq3PeZnDsXM7CwdLW30hq9lNw370=;
 b=j2P8wc0z+AMOyf0IPtcRBTF4v9c2R5wO/GwAe/O68G47Hc5nlXxSQr3hhctkVoWnUGfGpJFnL
 0DgOxOgjxt5R6v/0WGy6rLK6E0gtnpUva5bY7xp8xNA9u/qDjtQGImv0X8ILUbLiI2qXaUEF14t
 9uenxE3fDoxUisTP0CGSxaM=
CFBL-Feedback-ID: 6b0338514432eb7754305b3b:6b29310fab77a2f0093031b22dd678fa
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b0338514432eb7754305b3b
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
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add ArmSoM Forge1
Date: Sun, 22 Nov 2026 18:45:29 +0000
Message-ID: <20261122184532.1300004-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261122184532.1300004-1-jonas@kwiboo.se>
References: <20261122184532.1300004-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_104917_740517_6E6E4D0F 
X-CRM114-Status: UNSURE (   7.25  )
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
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QXJtU29NIEZvcmdlMeKAi+KAiyBpcyBhbiBpbmR1c3RyaWFsLWdyYWRlIHByb2R1Y3QgcG93ZXJl
ZCBieSB0aGUg4oCL4oCLUkszNTA2Sgp0cmlwbGUtY29yZSBDb3J0ZXgtQTcgYXBwbGljYXRpb24g
cHJvY2Vzc29y4oCL4oCLLiBJdCBpcyBzcGVjaWZpY2FsbHkgZGVzaWduZWQKZm9yIGluZHVzdHJp
YWwgZ2F0ZXdheXMsIEhNSXMsIFBMQ3MsIGhhbmRoZWxkIFBPUyBkZXZpY2VzLCBhbmQgaG9tZQph
cHBsaWFuY2UgZGlzcGxheS9jb250cm9sIGFwcGxpY2F0aW9ucy4KClNpZ25lZC1vZmYtYnk6IEpv
bmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KLS0tCkFzIG1lbnRpb25lZCBpbiBjb3ZlciBs
ZXR0ZXIsIHVuY2xlYXIgaWYgdGhpcyBzaG91bGQgdXNlCnJvY2tjaGlwLHJrMzUwNmIgaW5zdGVh
ZCBvZiByb2NrY2hpcCxyazM1MDYuCi0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAppbmRleCA0OWM2MWVlOTg1ZTcuLjM4YWU3M2U4YTM0YyAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbApA
QCAtODQsNiArODQsMTEgQEAgcHJvcGVydGllczoKICAgICAgICAgICAtIGNvbnN0OiBhcm1zb20s
Y201CiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTc2CiAKKyAgICAgIC0gZGVzY3Jp
cHRpb246IEFybVNvTSBGb3JnZTEgYm9hcmQKKyAgICAgICAgaXRlbXM6CisgICAgICAgICAgLSBj
b25zdDogYXJtc29tLGZvcmdlMQorICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzUwNgor
CiAgICAgICAtIGRlc2NyaXB0aW9uOiBBcm1Tb00gU2lnZTEgYm9hcmQKICAgICAgICAgaXRlbXM6
CiAgICAgICAgICAgLSBjb25zdDogYXJtc29tLHNpZ2UxCi0tIAoyLjU2LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
