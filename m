Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0750C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 07:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1OHvFNyaoz4BHqcH7hxv2leYpo3rIbVPlM09WtiuDWM=; b=jDZFzFlL4ykmPT
	6VFOhu9dG3Je6KJ+CWbllJwTF98RyQ1mPDtFo89tkyhifHS5qdXE9ddvcIzDSHiKKXOppc5Ofh1iq
	ir++E/tixmPfokYFQv14D4nDHpsgxx38eqYtGn5r4AFxp1uBv3JVZa9JQzdmyxUmh6aiMsFTCe39X
	fQOKndbTd3wSv2+RPJUOU8YingEKL7CyU0hCp3jFb515Eiyn8n7Vi8MheEVQF2NcxK5wPqes9zyX7
	aZOVm9m20xhF2oWZBmhm/7qCd4U2tWEGb7K5CnCjSW/bIWQHSRwk2cvYq7So0mlq6YXl++z/79KuO
	tA5xyXl4Adht3PmnQUPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKuMS-0000000HTnB-0lwk;
	Fri, 30 May 2025 07:41:04 +0000
Received: from mail.growven.pl ([51.68.70.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKuMP-0000000HTmP-3h2v
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 07:41:03 +0000
Received: by mail.growven.pl (Postfix, from userid 1002)
	id 7780E266B6; Fri, 30 May 2025 07:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growven.pl; s=mail;
	t=1748590860; bh=YxUJwSDYTiifz63s6cOCrXf5LN2PjYKK0bgKM+svvBw=;
	h=Date:From:To:Subject:From;
	b=qLiyeGKzSrFYuYijMLdi3StxvzY30T2lOHqQq9YMgDEDMiwXft3mAspEucw3qd+4E
	 hgY0yBGMnaU+akYZVFLzSkIf03mXo1P6jZ30WqS474ZThmPz1kr1LngZ82qtKHdtUq
	 PKHxp46lsOPXOGTh1FEfXBAuiG1Q0qxjo9UNJPuhs2/eZ9oZ8diV2WagqF4hYtqxAs
	 Gfaml/sGCFK8iQWdY6kQAE8ZS1Etdc2VUHXNd4L5xQhnndVL1bw5OzCG18Mx9+0dYx
	 Xf1JuDA3U9L+9e/mq2cFkacvwRi594pG1GnqSK8eeKzi1z5bDe3RT3pMLsoqWLsQeN
	 bE6SBK9XaZyPg==
Received: by mail.growven.pl for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 07:40:43 GMT
Message-ID: <20250530064500-0.1.2a.hcx9.0.hgd39fwkvi@growven.pl>
Date: Fri, 30 May 2025 07:40:43 GMT
From: "Robert Kozielski" <robert.kozielski@growven.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.growven.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_004102_059629_4722EFEE 
X-CRM114-Status: UNSURE (   1.40  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIHN0cm9uxIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KUm9iZXJ0IEtvemllbHNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
