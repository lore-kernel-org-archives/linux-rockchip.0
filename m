Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8452C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Nov 2021 19:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AQM5loyjdTFVO2BmYskBentQpdXfMhXUOBnhI18N6GI=; b=oIg450WvvVRY1lULXsS5KaAZKl
	8bKFfeqQYH+fg/yOELXDVLu+X9Z//Xxpr/c2SCxSkSJ3hER2u9rwsrdrNVsBDPEcX9HPo6bbFqrUW
	y1oeBaLcE30sKjaksV37QUfLgaAQzZXVx5dN+++3BMcbIKoNpXNJumzQnsYVt4zzJpbmqlICIzyBD
	77iivBhE0sQ6ZmHyCDwbJt+kLqcA/PKrb4O1GtDCH+JNFiyng2V/QE/hEpDjvTjPjYKXHvP5JMoCU
	Fw+ehlbrNVlPQ0DFQcYF0EqFCcLFlX7ttkl+79sy35ul1TTbFwjvbMeiUPrOZF7Me/KpLm1BFwjfo
	pq2rRoyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrPaj-00GWj9-Jv; Sun, 28 Nov 2021 19:12:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrPah-00GWiq-Py
 for linux-rockchip@bombadil.infradead.org; Sun, 28 Nov 2021 19:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Date:Reply-To:Content-Type:To:Subject:
 From:Sender:Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=vjIC+suNP7uaCtYlc9A40Kgy2eMsl3Xt4IdYvx5mE3Q=; b=wEXlnE6aeSNJVnHe65PhDSmAkb
 YqToz5BlyDvv5D4LdKVzHVMqunYGISOufb2vUWTgsIkxMYYXqi/ilUhDVzPCcnWWjUoAbRaK4yCv5
 MZbKCsRtlmDL9u4g3z525TCoLI8Sib9Wqq7Hc/8NvZj+F89qLFlAc+SAqRks/xiGMUlo9W0OYuvmM
 LBaGaR97/LEyS8PdvGoK//gPuohpltIWcp6o3X7xNVTe/flM2UChekxz1/ToFi/IqstMouXok3Gg0
 rIQNGmqRZ4Ty8NoLJLpCVu9zCXAGdjrGWhJmwcwvGPx8tHBN1IDGMHiOd7JQRnhoeiOdrCuzKLsdS
 q9AuhNlA==;
Received: from vps-cb7b666f.vps.ovh.us ([135.148.149.159] helo=q1vkdys.com)
 by casper.infradead.org with smtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrPad-003l96-JB
 for linux-rockchip@lists.infradead.org; Sun, 28 Nov 2021 19:11:58 +0000
From: "Hussein" <ahmedaliih464@gmail.com>
Subject: Assist me purchase a living home in your country
To: linux-rockchip@lists.infradead.org
Date: Mon, 29 Nov 2021 02:11:55 +0700
X-Priority: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_191156_918347_2D8CB04D 
X-CRM114-Status: UNSURE (  -1.77  )
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
Reply-To: Hussein <ahmedaliih464@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1mrPaj-00GWj9-Jv@bombadil.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Assist me purchase a living home, .I have huge sum in
financial institution  .Should there be a need for an evidence, or a
prove of my seriousness and genuineness. I have a Certificate of Deposit as
a prove of fund. am from Syria, (where I can
invest to sustain my living until the political crisis in my country is
over).Could you please send me an email on
( ahmedaliih464@gmail.com )  to enable me know you
have received my email.

Ahmed Hussein

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
