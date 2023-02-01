Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C52C05027
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Feb 2023 09:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9bK/j5vr8XQ3TRw7RFc5iwP1pZgOMqg8dJdRiZbe1U=; b=e2hkdLepZYolJw
	/C7mLosMJlc1ME0XofWtzaYnTIJ8LpP02ERB7U7tmivOOX5D/8RDflZCdO1yd7bksvNTGjCpxeSsC
	ytXhVwf7LPwdGBzwqG4dRpPhDs6/F2lOAIKzDj5wl7BtgfRXUCIYTjTMs1wZYY082FEdqZd79GMim
	qvfGxsHUjJcfhPyT9YVp+gr9SyyeO9O7k7N7JHevivq9WY8hwr8ghE3Z8WBc6F+71uMJtBNN9WGkK
	QduBB9lKK6hvhv7dw/SdeF9D+dAM+rqgqANYMIk5AacJJ3A8DxDotYU8CflZ2vM87L3fhxm568iQH
	IARXdRrh7MVwl98QOPkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN9Dr-00Az9y-1T; Wed, 01 Feb 2023 09:16:07 +0000
Received: from mail.corrib.pl ([185.58.226.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pN9Do-00Az9B-9E
	for linux-rockchip@lists.infradead.org; Wed, 01 Feb 2023 09:16:05 +0000
Received: by mail.corrib.pl (Postfix, from userid 1001)
	id 245E3A39D9; Wed,  1 Feb 2023 09:07:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=corrib.pl; s=mail;
	t=1675242461; bh=X6IEpSISwJiYlJ3uA866lskXve3r+4o2hf4z7VM6m5o=;
	h=Date:From:To:Subject:From;
	b=c7vfyCIXx3ABNyZZTI8VLzf7eD6sowF9BXeq5XLo0y2LC32sGRA7J6fE4pEcnH/GZ
	 woLMs3QxSzIsenqXg70drVp7UrRYGHBm+C03t/QF2BiRwf29xZjs3Yf3ZctcC7AGfO
	 2RahuWFqfHSNAbCNybabvlrUWZI0OCPBnnq8GiJiSxjAviXog7GA7swu0t/Lz/bU3G
	 cX+Jvgty5myF8HZpo16KVbFX2YbBOXhR6LRB0KNztf0dat1LQfNK8VK47bdek1DWdk
	 QMY6Ty58FJHYbAmSIfxvQhmW6V0dSnLNS9EMcFKZ40ioRT4xcXzLQUSeLd/uHH+Sxm
	 lRzJDU2lfPccw==
Received: by mail.corrib.pl for <linux-rockchip@lists.infradead.org>; Wed,  1 Feb 2023 09:06:19 GMT
Message-ID: <20230201074500-0.1.58.fihp.0.r5hhng8cmf@corrib.pl>
Date: Wed,  1 Feb 2023 09:06:19 GMT
From: =?UTF-8?Q?"Szczepan_Kie=C5=82basa"?= <szczepan.kielbasa@corrib.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Faktoring
X-Mailer: mail.corrib.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_011604_457568_33FFC424 
X-CRM114-Status: UNSURE (   1.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKcm96d2HFvGFsaSBQYcWEc3R3byB3eWLDs3IgZmluYW5zb3dhbmlhLCBr
dMOzcmUgc3BlxYJuaSBwb3RyemVieSBmaXJteSwgemFwZXduaWFqxIVjIG5hdHljaG1pYXN0b3d5
IGRvc3TEmXAgZG8gZ290w7N3a2ksIGJleiB6YsSZZG55Y2ggcHJ6ZXN0b2rDs3c/IAoKUHJ6eWdv
dG93YWxpxZtteSByb3p3acSFemFuaWEgZmFrdG9yaW5nb3dlIGRvcGFzb3dhbmUgZG8gUGHFhHN0
d2EgYnJhbsW8eSBpIHdpZWxrb8WbY2kgZmlybXksIGR6acSZa2kga3TDs3J5bSwgbmllIG11c3rE
hSBQYcWEc3R3byBtYXJ0d2nEhyBzacSZIG8gbmlld3lwxYJhY2Fsbm/Fm8SHIGtvbnRyYWhlbnTD
s3csIHBvbmlld2HFvCB0cmFuc2FrY2plIHPEhSB6YWJlenBpZWN6b25lIGkgcG9zaWFkYWrEhSBn
d2FyYW5jasSZIHNwxYJhdHkuIApDaGPEhSBQYcWEc3R3byBwcnplYW5hbGl6b3dhxIcgZG9zdMSZ
cG5lIG9wY2plPwoKClBvemRyYXdpYW0KU3pjemVwYW4gS2llxYJiYXNhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
