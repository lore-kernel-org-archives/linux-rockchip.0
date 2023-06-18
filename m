Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD06EEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jwvLjy3uonChjwUGVuTpu4p5JG+UjjbGK2Ynre6fSfk=; b=yOg
	5wK6jAYkHVWZ5M69JjrSZmJ2xE+XUd9dIqrh6GdS9+ES3VKzpt+kTSgBYQYUUZsuphXFd7p+GDOXl
	JUVNx9uoJR0732useExRpM6VguBvfKX6vr6rhR06N8webFh2TgQoRQFrYPQNUuy2v4JVuHCZZBmKk
	HB4hm2gB2VssUW0kWNi8YGAagwlya0OMc7meWVpsj+VtRIHQNaSq46WtfoPkmPQDBWvnxUnDalHdJ
	lObKGGUvOFPBY5aUCN3vb5HmE/acKtNmpa5DlAQTkVKrub2Mew3WzlLhXDoSwgW83fOh1xg7YARIH
	XnJavujSmaf2Pl/kO90OlKmK/O5IyAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUj3-00AGWq-37;
	Tue, 20 Jun 2023 06:20:25 +0000
Received: from zsmtp-out1.bppt.go.id ([103.224.137.202])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUj0-00AGUy-10
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:20:24 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by zsmtp-out1.bppt.go.id (Postfix) with ESMTP id 0E8F89BAD8
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 13:00:59 +0700 (WIB)
Received: from zsmtp-out1.bppt.go.id ([127.0.0.1])
	by localhost (zsmtp-out1.bppt.go.id [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id RCulqxBEtGUr for <linux-rockchip@lists.infradead.org>;
	Tue, 20 Jun 2023 13:00:58 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by zsmtp-out1.bppt.go.id (Postfix) with ESMTP id 0C756AC266
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 12:54:08 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 zsmtp-out1.bppt.go.id 0C756AC266
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bppt.go.id;
	s=selector; t=1687240448;
	bh=mT4C0VGIL9cwEg4iQcifPH62fsFpI/CbiLcos0MqCTM=;
	h=MIME-Version:To:From:Date:Message-Id;
	b=puFZGktS7syyJEoghtc2y/Ume2eHmxq8zJKq3US9TImp60/kkzJMHIv4uJm4dJ9wW
	 H5P0TPhb4ZuU69YAXqpuwLaryXq4SM+8tin4UYFr+nw0C/20+w+1g0J+4MN/Z8iHkg
	 15lJ5U9tJrFTwRxYfNa2K3rVW6C0PpTBjq8hFY+0=
X-Amavis-Modified: Mail body modified (using disclaimer) -
	zsmtp-out1.bppt.go.id
X-Virus-Scanned: amavisd-new at bppt.go.id
Received: from zsmtp-out1.bppt.go.id ([127.0.0.1])
	by localhost (zsmtp-out1.bppt.go.id [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id gwnXQ7EjQpFB for <linux-rockchip@lists.infradead.org>;
	Tue, 20 Jun 2023 12:54:07 +0700 (WIB)
Received: from mta1.bppt.go.id (mta1.bppt.go.id [10.10.180.6])
	by zsmtp-out1.bppt.go.id (Postfix) with ESMTPS id 2E08AAF328
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 12:47:23 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mta1.bppt.go.id (Postfix) with ESMTP id A280CADE84
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 10:10:28 +0700 (WIB)
Received: from mta1.bppt.go.id ([127.0.0.1])
	by localhost (mta1.bppt.go.id [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 5us_obSyGP9C for <linux-rockchip@lists.infradead.org>;
	Tue, 20 Jun 2023 10:10:28 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mta1.bppt.go.id (Postfix) with ESMTP id 0A068204873
	for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 06:19:42 +0700 (WIB)
X-Virus-Scanned: amavisd-new at mta1.bppt.go.id
Received: from mta1.bppt.go.id ([127.0.0.1])
	by localhost (mta1.bppt.go.id [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id anqEX4Z1cJIK for <linux-rockchip@lists.infradead.org>;
	Tue, 20 Jun 2023 06:19:42 +0700 (WIB)
Received: from [192.168.1.39] (unknown [88.233.174.93])
	by mta1.bppt.go.id (Postfix) with ESMTPA id E8786C4B3C
	for <linux-rockchip@lists.infradead.org>; Sun, 18 Jun 2023 17:31:19 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Reminder
To: linux-rockchip@lists.infradead.org
From: "Mr.Mark" <asep.nurohmat@bppt.go.id>
Date: Sun, 18 Jun 2023 13:31:14 +0300
Message-Id: <20230618103121.E8786C4B3C@mta1.bppt.go.id>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_232022_914858_CDD3655D 
X-CRM114-Status: SPAM  (  -5.02  )
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
Reply-To: ceo79ceo@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Did you receive our previous email?
Isi e-mail ini mungkin bersifat rahasia dan penyalahgunaan, penyalinan, atau penyebaran dari e-mail ini dan semua attachment dari e-mail ini dilarang. Komunikasi internet tidak aman dan oleh karena itu Badan Pengkajian dan Penerapan Teknologi tidak menerima tanggung jawab hukum atas isi pesan ini atau untuk setiap kerusakan yang disebabkan oleh virus. Pendapat-pendapat yang diungkapkan di sini tidak selalu mewakili Badan Pengkajian dan Penerapan Teknologi.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
