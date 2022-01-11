Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B983C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jan 2022 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aX9iIc6q1w1llIg/Cs5mWfo3HNbwk4jZ3+8Sey4fKC0=; b=W131JK9yr+2slI
	zEBGFkYUXLmZcW1DkwsjwEtUO7oYsljlyvpLl7wW5ZTAKjsqbG0E7CbSJ/Ys/9NyyvTGxryR6ERiJ
	fUxY+lKuNyHIwW64xOLrQBj5NSThtwPky55MCL3rFzpu81qJkbU+CZLXgqk50OBSH+FGQW1uw4zm+
	+4+OUC4NynjBY1Osf/FM8qyBnTEPxWEY4FOO8k6E6K1NR7LlgwpzGUimhqcDAd7trAgY3gPcSVsrF
	unbREVS9DmJufPrr8W2plmTLXjSvGSDhO382IIM9wwW9kEhLQioWWLB25s9OIrs1ugetSG2j+xdeA
	Hgm3XrqZkoH++FcPSoVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7Bv3-00FBVs-Kj; Tue, 11 Jan 2022 07:50:13 +0000
Received: from mail.betterbiz.pl ([45.86.209.138])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7Bv1-00FBV5-BC
 for linux-rockchip@lists.infradead.org; Tue, 11 Jan 2022 07:50:12 +0000
Received: by mail.betterbiz.pl (Postfix, from userid 1001)
 id 0FF1882507; Tue, 11 Jan 2022 02:46:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=betterbiz.pl; s=mail;
 t=1641887411; bh=07NAgW1e0WiNB9zqagiM2BnwZfWBCpNa2E4+ccxBPgw=;
 h=Date:From:To:Subject:From;
 b=wUQL5BMTApIkneyTH9H6Rty7sUCHCr8Heh+0zuUuKTou7QGaqX80bhc6O4GOh4mqN
 LtkL6eQBPpKkoZauX+EkKEqhdqTdGioeU6dnwnoDhi+ij1Mf2O5RKc5nKQy0dzAMVH
 yhRw1tgfmphSIb+xzef1IhUIXkYE/SkZdy0Jx9NJxuxOnOAkRx+28rvaEF6N6TyUY0
 n+MY024Tr76N4yXH2xfcx49TAeGlguy9B/lWdIfL4cAsAs8Uww3RzQAitbjGR1tWXx
 d8WQ3DuWiyfldvcr4eLg/Yhhx+jcyYwr4CK74PAlF7S4yRwezfwoDZEHGfXepgVKHA
 B3wEUE3UlYd7w==
Received: by mail.betterbiz.pl for <linux-rockchip@lists.infradead.org>;
 Tue, 11 Jan 2022 07:45:59 GMT
Message-ID: <20220111024500-0.1.o.101k.0.whohq44n4q@betterbiz.pl>
Date: Tue, 11 Jan 2022 07:45:59 GMT
From: "Jakub Daroch" <jakub.daroch@betterbiz.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.betterbiz.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_235011_414398_D5F38039 
X-CRM114-Status: UNSURE (   1.29  )
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

RHppZcWEIGRvYnJ5LAoKZG9zdHJ6ZWdhbSBtb8W8bGl3b8WbxIcgd3Nww7PFgnByYWN5IHogUGHF
hHN0d2EgZmlybcSFLgoKxZp3aWFkY3p5bXkga29tcGxla3Nvd8SFIG9ic8WCdWfEmSBpbndlc3R5
Y2ppIHcgZm90b3dvbHRhaWvEmSwga3TDs3JhIG9ibmnFvGEga29zenR5IGVuZXJnaWkgZWxla3Ry
eWN6bmVqIG5hd2V0IG8gOTAlLgoKQ3p5IHPEhSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSB3ZXJ5
ZmlrYWNqxIUgd3N0xJlwbnljaCBwcm9wb3p5Y2ppPwoKClBvemRyYXdpYW0sCkpha3ViIERhcm9j
aAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
