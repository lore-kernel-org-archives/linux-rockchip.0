Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA3A606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 09:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d43CqBBs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=jschaer.ch header.i=@jschaer.ch header.a=rsa-sha256 header.s=fm3 header.b=R7mugJqw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=aivISwZU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=6RhnHVTRJ4J/D9yI6Zeo8clexi2vhp9vE7kXnmA3eAw=; b=d43CqBBsXJU2XeekPvyqQok12S
	S0AOZ69NpkL3xJT+/ReO7il4+/nG1MQk847aGg3J6ELG2p7EKunD1FhGp3MFA3/jdrhgqPJyev3fH
	I1rxSUyA+/jDfKQKdTSXssM1fF6Pe7+Ie1mTh5ZbZ+5cJGbM4+FOmDRo5l/yHnRsiWaLINxejQ2fK
	oRrpcgRqHqqJsSKz7XqMEHfreaI6+YPxNbvE49nsUp9WqXr+P/MhS82wpjPQi7SlRlX6ts657tYu8
	hqrnf9kMhnkvH1OTijwxZKkV3JOA9JU640x9USOV81BFOr7SLldInJwWnNo6WkERdbaUjrGKeV9Cw
	TX9tMSbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUKbc-0000000EQae-42l6;
	Fri, 20 Nov 2026 09:08:28 +0000
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUKbW-0000000EQZE-3h0d
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 09:08:24 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 8E1FE1D00388
	for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 04:08:19 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 20 Nov 2026 04:08:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jschaer.ch; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1795165698; x=1795252098; bh=Eb
	8Btk76s77msHfVg+/TsIgZczD+oc/KLRtiVpgTo1M=; b=R7mugJqwUYfPgsmGbc
	SszqyzftyFV9n3wx7kM0YsvVz7T9k9/VqO460/q7F9yY6H2HIbHcgGx4RF0AWDFr
	Z+JUVGPY2ApuVBEqocNWQxwqn74MRtt2zvzJhtSFK/uQo4doHYIIZR1TguupzC/h
	4RC1fluJHyjGux0CLtZZrD3U7J4qyJY6B2oRZPy42vTykPYSNQQrnnxTXN+Eukmx
	Ciw4nfFg2NmdL3t/nG29FyR/DZtzkSjMnMs4CS3uJ/PD+5t5J4/D3O9khu/oT+gz
	nxqfspeYw4LtLFU2xibTRLxdiP6vxf1BxJzZ0YsX2xzqWnFlPZGe/nNvCVXvp4S/
	jdgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1795165698; x=1795252098; bh=Eb8Btk76s77msHfVg+/TsIgZczD+
	oc/KLRtiVpgTo1M=; b=aivISwZUn2zhIH8UpkCWHs8XgMSuBSmznlNynCgur5pv
	0UOgLS5NQ9Q2zPMZnOoMAaUyvU8kePoar/+cnOI22wZpwb6iiXCSGqn9UCbuuAl+
	jyDf67QuaGUM3iu33dUOnOmOkOcUAWA3CLb3nSl8Y23mobfsXOaBlCeO+D/xbQcs
	UZyye2wUcQPKL3fosgk6GJVFovJFTSrDDIjFvpgSSZeIDfhMa5GetuOUMEABbZAl
	+Lu7X+7ySM4yHKtLAcDi+Nby6RW2WZJSUGfYvDxgRXASi3DG40wI0WjYH17LN40H
	ZrbVC//ZnJGx2q6YkUCpBZSSnnH+60AFhdvo64AZlg==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=jschaer.ch a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795165698; d=jschaer.ch;
	mf=PGphbkBqc2NoYWVyLmNoPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm3:rsa-sha256:d6ce1rg8tCMhUf/nMaFrtNiRBZGX8xCI/RSHD2n9euwn7Zc
	hpZM8x20Q7djPOXifMo+RigIFMg96ama5XgT2lzQKPDe1SwSKI7tgnhhuymH4PSW
	oCrsQyXsxzCPr3vXhYC24kaWPI1iokVmi9BOzaxB9nsBfpCogIIWxjgG7noAk6Ws
	PlxauYggh9LFNd9m9CaVEOE8KGSSpKLd1V3D17jaRwZU8h8GccAv7PnD+j5G2thX
	ocPUL2kI798HPwBEhKZxmLUvzelRgEeRYak7QRgg5G6S2ItF8nE8XU2o3T+kykaw
	3FEoXeISjdNsKvIkNQvptoyk4+X7HdlfPVsVWkA==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=10;
	hn=cc,content-transfer-encoding,content-type,date,feedback-id,
	from,message-id,mime-version,subject,to;
Message-Instance: m=1; h=sha256:Dina7eqkP6ZONZ96ujKUKkvbXZTPeYWQAoG52r4zcww=:FR2VA/pOmFjNjYQfGp/Vu41XJ6bW+af+V+qlyrlnlKU=;
X-ME-Sender: <xms:AQ4AawcOQEq8hAqLVsgyS7VWNn3BKC2j7qU-MJJqrE7PuvNmNdk81w>
    <xme:AQ4Aa-wpIKKjDJOZywtIyWjFem4lBE5WDfydhZbMOx7kCz7s0eMefHex8Dch-86DO
    GYySGDeJ3WQf2Y9pEQIVYA6x4syeljbtocwpaKcjCvOft-I3y_PWnm6>
X-ME-Received: <xmr:AQ4Aa18akq4b1w6Tjm5A3iM2Jlbkmib7tGKbnMWOtd3spWcSf299fJh4ueEnJiz2MX4h9FVTsKG9zpkhF-5tXC9wYrV1DuAKyDdL>
X-ME-Proxy-Cause: dmFkZTEXrV/HxlQ+uFM1Vvb9hd4Fep4Iz7Tfl+ZCU5TmlMm/EV93OgCR0ATk9L7A99QwOy
    t0RPc+JM/E3+efD0A1zZzQDEgEVeRKlQV8JnS2tyog0XUVE0hlAgUZYJ0csH1Mp+7ZkW4K
    YejMfg+em/LD9OHm2YlDpgGQMPeAxj6esbPowGt/wARofr9MAN6kX3ZdRdMdXA4OLgzo9S
    gBxovOQaLhRYEXg9ALRDWtgNnJI4XWZsdxKa5K8QkafhqhaJa1NJnyQosnz1eMf0kpb+IP
    rDxVGtdTSUAZc12x9SCfDx/PGeh+rJkaiD1O8kvgxPQZ/wPzP5VRHE6SA5U5SAdqePz1Fp
    OHnEgevTHtK8SVk2DFGUxlX2347kVenhVkjgc4VOwR4AsC6mBWHhNjNdDolCdNyVBE1HQN
    skPvz8997Ik8YwVeX7IZp6mUU+cf+vYXbhUJnBp846VeGOW6iMJgf0Rm/oulqnswzB3Han
    tdX7KU10kLPMmvEC2g6f7d+cwNj27S89aunyRH+L+5hZ0xo1csJJGg2AGNEi/cPMe43rHL
    PU98yQ/X+TX0czpFs5PLjr763GSDIkcqXaNDgwaXN4rjGivmiR7hyege0vsrb9uVtiO2Lz
    3OD2yr9uNmI9muURCdWUup4wAK4R+OuIy1X29RbnEWjAjnY4srGWkwiimsUQ
X-ME-Proxy: <xmx:AQ4Aa8yV73luS7OIuxK7I1OVLM_U15nGTYOXB9Fm81bPYVd6YS1Y9A>
    <xmx:AQ4Aa9rnxYcTUUjvR7wmpBn3npwxhxNYt1TY4beFxI1ToHG6MzlqpQ>
    <xmx:AQ4Aa1oLjD8C9dVGbPHoxPfnnnmfCeshThBevmg6TlbHMc087sOsNQ>
    <xmx:AQ4Aa1AajPdgf05GcTe156-mf2zn_vIUzjQArfilllsIVXZhU2kHjQ>
    <xmx:Ag4Aa5rn1blT7JH11eLChFUcT6tHWyqdf7QCcjbOJwk7jEm8cyegg0dO>
Feedback-ID: ie67446dc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Nov 2026 04:08:16 -0500 (EST)
From: =?UTF-8?q?Jan=20Sch=C3=A4r?= <jan@jschaer.ch>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Jan=20Sch=C3=A4r?= <jan@jschaer.ch>
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI RX for Orange Pi 5 Ultra
Date: Fri, 20 Nov 2026 10:07:12 +0100
Message-ID: <20261120090712.68178-1-jan@jschaer.ch>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_010823_105968_B9399845 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

VGhlIE9yYW5nZSBQaSA1IFVsdHJhIGhhcyBhbiBIRE1JIGlucHV0LCBlbmFibGUgaXQuIEl0IHdh
cyBtaXNzaW5nCmJlY2F1c2UgdGhlIHNucHNfaGRtaXJ4IGRyaXZlciB3YXMgaW50cm9kdWNlZCBh
ZnRlciB0aGUgT3JhbmdlIFBpIDUKVWx0cmEgRFRTLgoKVGhlIHBpbiBkZWZpbml0aW9ucyBoZXJl
IG1hdGNoIHRoZSBzY2hlbWF0aWMgYW5kIHRoZSBEVFMgaW4gdGhlIE9yYW5nZQpQaSB2ZW5kb3Ig
a2VybmVsLiBJbiB0aGUgc2NoZW1hdGljLCB0aGUgaG90LXBsdWcgZGV0ZWN0IHBpbiBpcyBuYW1l
ZApIRE1JX1JYX0RFVF9MLgoKU2lnbmVkLW9mZi1ieTogSmFuIFNjaMOkciA8amFuQGpzY2hhZXIu
Y2g+Ci0tLQogLi4uL2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS11bHRyYS5kdHMgICAg
fCAxNyArKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2Vw
aS01LXVsdHJhLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5n
ZXBpLTUtdWx0cmEuZHRzCmluZGV4IDJiNjkzZGZiNDM0Yy4uZGRjYjFkMmY5YjQ5IDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXVsdHJh
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01
LXVsdHJhLmR0cwpAQCAtNDgsNiArNDgsMTcgQEAgJmhkbWkxX3NvdW5kIHsKIAlzdGF0dXMgPSAi
b2theSI7CiB9OwogCismaGRtaV9yZWNlaXZlcl9jbWEgeworCXN0YXR1cyA9ICJva2F5IjsKK307
CisKKyZoZG1pX3JlY2VpdmVyIHsKKwlocGQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BEMyBHUElPX0FD
VElWRV9MT1c+OworCXBpbmN0cmwtMCA9IDwmaGRtaW0yX3J4X2NlYyAmaGRtaW0yX3J4X2hwZGlu
ICZoZG1pbTJfcnhfc2NsICZoZG1pbTJfcnhfc2RhICZoZG1pcnhfZGV0PjsKKwlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZoZHB0eHBoeTEgewog
CXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC03MSw2ICs4MiwxMiBAQCBoZG1pMV90eF9vbl9oOiBo
ZG1pMS10eC1vbi1oIHsKIAkJfTsKIAl9OwogCisJaGRtaXJ4IHsKKwkJaGRtaXJ4X2RldDogaGRt
aXJ4LWRldCB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEQzIFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX25vbmU+OworCQl9OworCX07CisKIAl1c2IgewogCQl1c2Jfb3RnX3B3cmVuOiB1c2It
b3RnLXB3cmVuIHsKIAkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQjEgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47CgpiYXNlLWNvbW1pdDogYWViYjcyNzQ0NzY0MDMwNDBkNTgyYzYxNDc4
ZGY4ZjRhN2JmOWNkMwotLSAKMi41My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
