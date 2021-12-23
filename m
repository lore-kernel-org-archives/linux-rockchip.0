Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD02C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Dec 2021 08:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aX9iIc6q1w1llIg/Cs5mWfo3HNbwk4jZ3+8Sey4fKC0=; b=0DbDq9jNrn8arm
	Dxyp6cs6jjZtXQ1xkD03HjBq7syuGYm07oNcj4Sf3wDlIgKI24O8BLp7HLuWjPVlbQyqc3/jsCoTn
	z2rUABPEhtdfcEtkNFeTZrkwR5NL7jwzGNQnLOrr9ipvhkSb7X3w3RKsSucu8PmiCaUPCNxv+7GJ0
	laHRG+dOzETGyZSwgHNz6GPbK/e9gXLR3zQJxsWHTdKdvqsk9OuDtuHqByYxKg8HZsvYs3OcM1LMW
	qhJ2fD1cxgfn9vSK9ur3hzDSck/bWInucY6wegc5kEfwDsimBcTsxW5qQAkuWzUG58z2x8ausy4bU
	nhabflc7mRiMv9S70y5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0JPu-00CE4w-H0; Thu, 23 Dec 2021 08:25:38 +0000
Received: from mail.betterbiz.pl ([45.86.209.138])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0Ipc-00C0Nl-Uw
 for linux-rockchip@lists.infradead.org; Thu, 23 Dec 2021 07:48:10 +0000
Received: by mail.betterbiz.pl (Postfix, from userid 1001)
 id 02F4782CC3; Thu, 23 Dec 2021 02:45:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=betterbiz.pl; s=mail;
 t=1640245688; bh=07NAgW1e0WiNB9zqagiM2BnwZfWBCpNa2E4+ccxBPgw=;
 h=Date:From:To:Subject:From;
 b=OoWw0YoSyD+E0NXeWSxp+Riay9U2zkpMGh/g9OVkvUOmDS+h5zZiawVJqMSslkHNR
 f84I96NiYpWRRDoDNt5grXwiWIhNvPWg/UeEiHPM8hb24+vmuH7BAW3JdqblFZ8H0M
 KQpFzXbwybMikcsGSg8yRfMNINqkMY/D1UVFe6Kh6wSzoGygqbHddnHKgtpDzyTNsN
 7JEkzXODX/rOR3W3oDrbqw+0mCswOw6SpK5eRIas8Y6E2MLHiAwOlqtJ5HFVF/NsPh
 pdRnWEENI7XBRfYnXqLPr+JGyGRjgI4F5tY/WsIaWRE2rB5gmJYI3OGWKNwokisWqI
 VCLzRV4pMEBXw==
Received: by mail.betterbiz.pl for <linux-rockchip@lists.infradead.org>;
 Thu, 23 Dec 2021 07:45:46 GMT
Message-ID: <20211223024500-0.1.f.101k.0.79u9m5efyj@betterbiz.pl>
Date: Thu, 23 Dec 2021 07:45:46 GMT
From: "Jakub Daroch" <jakub.daroch@betterbiz.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.betterbiz.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_234809_052700_D86244ED 
X-CRM114-Status: UNSURE (   0.58  )
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
