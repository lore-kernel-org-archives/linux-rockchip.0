Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1166C77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 08:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i43lf1vmdMbCCvwcfxVpE1QvnRLU/qmrD9az2sxOdHY=; b=Zjh4zadckRXZvM
	HqIhc/x8K5/jY6JPuMavAB8NcCMNqybUTQoBQoSErLO8Yj/UwWA6OQ6Q51p/HZH5cp4uT5ZvGFW6m
	b8uktkBrOg+h+9pyHAKl0xAgeMoDoWrwiqOu6sUh7U7xmEOT9+wnzJRZ8Yeq59S5qZpPKBiWPJ5LE
	DEpwxuqp7k02QeNlM3da9oNKSZE1gIJNB1Rl5FilWZG7al2TtErH1oIonBwUqMY1sAtu5JCYVmaeD
	ZpKB2ST3u4IwqMN/hMtrjwQpFjd13sgeQF8M1PIuFCJse5GgXJ/2FazFl1fVBoEdCQqizxVWKI6Ff
	cexNZwkpk8OhQBslsFxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV4By-0000000DvS0-30jQ;
	Fri, 27 Jun 2025 08:12:14 +0000
Received: from mail.successa.pl ([162.19.205.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV4Bv-0000000DvPW-1WPC
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 08:12:13 +0000
Received: by mail.successa.pl (Postfix, from userid 1002)
	id 7CAE32974B; Fri, 27 Jun 2025 10:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=successa.pl; s=mail;
	t=1751011906; bh=Q6Mp/vCJCiZNgk6fb7utkqIErbcoVoR/CugPofoeCtU=;
	h=Date:From:To:Subject:From;
	b=abOtCZJUENUIhth+ngFfQ5xDW7zV6nlFVPY0sE+S0bVkemtiskWDM0bWtfgrTw6Ck
	 RegctAd+ky6kbFnmSNpan1M+jC+3nJy8iUU/r6kYLjnJPo4z4JS1ZyIehVkDSIOyjb
	 9mxFi8E4zxBjQ0cGI++Wu5hZV/mxpnpUTN7MllR0WpUAfEj5o2QEP6BLUhKIBqH3lY
	 Wwh91RCr+OjcOOK8M4E/yejDBOzPIAPsBd5wv2xzTZJuQWV3PipCKKyhwxBaE9h0iV
	 zlL1adRXqsxEm5uT39qthrq/WnKfBA9oYLWUkdH8k8Yiz2sGONHVb9agk5XnKiWbWR
	 goAwHgEPTrr+g==
Received: by mail.successa.pl for <linux-rockchip@lists.infradead.org>; Fri, 27 Jun 2025 08:11:06 GMT
Message-ID: <20250627084500-0.1.j1.1yopd.0.idoidxozbb@successa.pl>
Date: Fri, 27 Jun 2025 08:11:06 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@successa.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.successa.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_011212_094092_F735CDBC 
X-CRM114-Status: UNSURE (   0.25  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkFkYW0gRHJ6
ZXdpZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
