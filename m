Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E9DE6F070
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Dec 2025 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VTuUmimY2bnVdasxQw6UNO4gv4QgojHITJNCR1N903Q=; b=bFraC9L7qRWNp1
	DLW3d6CJy3y7dE4G9X6lvuqWgSwafdX9Wr5lEjY/THPvugxkPhV1we8mSjCHfRqeAv0WUrhWW3na0
	4Q4jUz8wVfECrC6g05QMLPwqoYwE9xUrWSj8avohKhxpREvgbwEdqR3CyhzMM1PRB1FZl6mmTbx4I
	oPCar2FlLS7HdOOyHxpOLW7attXcOnMk22hKvDxtyWOnAJTzn3jxd0KmH6HrXSulQTfiROD65thfl
	bxhtx9Resl/xAl714a4scCi/3ygTgf1JtkiR1aBP14QLLiNSnHatlpJvpYaM7S9UeaVFGwB5Ingpu
	iUhJQGdLqwLIDGitzNBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXyXe-0000000EjwC-3sMr;
	Tue, 23 Dec 2025 09:18:54 +0000
Received: from mail.vexro.pl ([141.94.250.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXyXb-0000000Ejvu-45cY
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Dec 2025 09:18:53 +0000
Received: by mail.vexro.pl (Postfix, from userid 1002)
	id 4CD3BA6E89; Tue, 23 Dec 2025 10:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vexro.pl; s=mail;
	t=1766481425; bh=rBf3jQVFnGCeJlMPbA0E+WWQIPnf9AfAJW4UEB5U3Ig=;
	h=Date:From:To:Subject:From;
	b=uS0YDc7CBZ1ldWBeiOA0OJKnJxKO0yXi8/fQta4AbqygpYGZmlYrtzpMX6mc91uyU
	 1q1gyCCcGSRS7ElRjANtFa+NPcmPe94F1LhK3ZOMHJNnvdehLRADHVOgktstNJ8sEi
	 /SuywjLgsME9AG9BklmfGJlkdnJMpmsKgy/dZ7sZoIt8jC+FgIKCJh9Sx/pdSGPmFV
	 IvkeP7VgVw+/LOrnuCpKY6KuZ0tZtIogLO6eop0hL2ocHsArSj7EtjtpwK5d2SNqKT
	 biQy+H6kqwwbGVrYb4ibfQBx/fwAPHfhTm2kmFXnhB/fUXoLzeTxNbSyL0Ak+Z5s85
	 7e6dPrS6Kip9g==
Received: by mail.vexro.pl for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 09:16:09 GMT
Message-ID: <20251223084500-0.1.pd.4t1hv.0.vh7nq4g1c8@vexro.pl>
Date: Tue, 23 Dec 2025 09:16:09 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@vexro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: W sprawie samochodu 
X-Mailer: mail.vexro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_011852_204738_8DEC72A7 
X-CRM114-Status: UNSURE (   1.38  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IGlzdG5pZWplIG1vxbxsaXdvxZvEhyBwb3Jvem1hd2lhbmlhIHog
UGHFhHN0d2VtIG8gd3Nww7PFgnByYWN5PwoKRG9zdGFyY3phbXkgaSB3ZHJhxbxhbXkgc3lzdGVt
LCBrdMOzcmVnbyBlZmVrdGVtIGplc3Qgb2JuacW8ZW5pZSBrb3N6dMOzdyB6YSBwYWxpd28sIHN6
eWJzemUgcG9rb255d2FuaWUgdHJhcywgc2tyw7NjZW5pZSBjemFzdSBkb3N0YXcgb3JheiB3acSZ
a3N6ZSBiZXpwaWVjemXFhHN0d28ga2llcm93Y8OzdyBuYSBkcm9kemUuCgpQcm9zesSZIG8ga29u
dGFrdCwgamXFm2xpIGludGVyZXN1amUgUGHFhHN0d2EgcG96bmFuaWUgbW/FvGxpd2/Fm2NpIGx1
YiBiZXpwxYJhdG55IHRlc3QgdGVnbyB0eXB1IG5hcnrEmWR6aWEuCgoKUG96ZHJhd2lhbQpBZGFt
IERyemV3aWVja2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
