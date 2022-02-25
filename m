Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0467EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 08:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aX9iIc6q1w1llIg/Cs5mWfo3HNbwk4jZ3+8Sey4fKC0=; b=20pGWTglw8rDQl
	SLlR70zNOqUu12Ls+SWas/0oc/Lzakl79Mj+Q8tohLVoQLN0ObbbbItzzMu8s98dgCNZQGuopiw3+
	3n9DZkeGa7BAvkKzZwHGI9aZy5DALdSkWXLCcLKa5pFSLFGBBWG8dujIgwiSLpEgoz4Zx2KEnGTSc
	ZE1ynH2mxzSky7zAUF4PHcwKDwy5WkNx5xD5l6ZD6O6ykyUeVygkRVH2t6l/fB4Rv8yv+woaM8JiF
	YAxNmzpbuTnBmsN3exWeXz0wriUqXq2smzBhkFhwymAVmmPOHP4AYNRuC3UcONBbLgoyRream21Q6
	k071Ags/MivCavu68SiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVhL-003rSA-6e; Fri, 25 Feb 2022 08:11:31 +0000
Received: from mail.powerangels.com.pl ([45.86.209.159])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVPq-003ieB-NH
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 07:53:28 +0000
Received: by mail.powerangels.com.pl (Postfix, from userid 1001)
 id DCA9D837F2; Fri, 25 Feb 2022 02:45:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=powerangels.com.pl;
 s=mail; t=1645775186;
 bh=07NAgW1e0WiNB9zqagiM2BnwZfWBCpNa2E4+ccxBPgw=;
 h=Date:From:To:Subject:From;
 b=v7lf11qlC8g2AG9WCJlYNEv+OwFtyjzJpYJKesDfsdVYDU1usMnEEtdczUJMrvJBT
 yk2lnITWyZYqBWwT7gnz5VweUYjKcQqGfOcUVo4BiHFvgG3E45MI1QWrMNQvseO/FT
 /aCLZRzTHM+UTZaUYKGx1oM4alWsaJcvgDBxsMUN2vfEPI+kchRlYnGuEm+f/vNrT7
 9WZbYcU7y8++Ly+kn6b2ETvjDIovWLQ2rf3iv1KiI/waKz830j2Xz9x8/Oi7a/FThP
 AKWw41U7Zs+ND6R8EYwkQZLGblGG90k+Z3YdwqwtVLMTCOtYN+TZeO+5CL7RFe4zfx
 2SfnGz5+NdlIw==
Received: by mail.powerangels.com.pl for <linux-rockchip@lists.infradead.org>;
 Fri, 25 Feb 2022 07:45:30 GMT
Message-ID: <20220225024500-0.1.j.20ox.0.4gb7852eqh@powerangels.com.pl>
Date: Fri, 25 Feb 2022 07:45:30 GMT
From: "Jakub Daroch" <jakub.daroch@powerangels.com.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.powerangels.com.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_235326_842587_C98DD1AA 
X-CRM114-Status: UNSURE (   1.17  )
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
