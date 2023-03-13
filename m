Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 489E3C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 22:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Ai97c3jw4ajMPJl+09uOpzfeL6noZXpxxP3wH9g9DY=; b=hBc11iMgI1oJtx
	Rk1Bdb71NKR2clBlphXDJYB8prxn0U99f15KT/XfNXl2ONas6rQlTmzO8oBS62GxS2DUX3TJNyCxt
	xpJvC30isG+xsost34VKA7QtdaZmXRU1QtBvkdNBRIcvJBnM9RtW29h32+Dt8iD/80Kx4dCSkAqaV
	QfmhbOdaxXsvZOCl7GKzcuWjErqQZPpGsrBZ972ImMto7iwv+JNYMBvQ6w3R7BUStH/kiHmRxLVk3
	tPx6G0YMbcoZ2PSXKPZvOSZcfMpDXGsT+rQEiahpOsL0gI4tvpJzSNnY2+977vdVLUSRLhyB7VQb3
	+atyDwKujptZz+j6yyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqko-0085Oo-FA; Mon, 13 Mar 2023 22:34:54 +0000
Received: from [103.30.145.160] (helo=defaultworkshop.klidefectmanagement.com.novalocal)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbqkm-0085OO-Fo
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 22:34:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asda.co.uk;
	s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
	Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=Ir4idokofGTABzjLJJzp97zj3O6Cs7n4Ugw6ZtwYnRA=; b=E
	zJmydNczzGXNXgaovdxrkiwVEuTyrogMnqIRu/SzOXYnA86FC0n3aPOCytbKdLGJn4p9mkCxqxJj1
	toe+vj5p985kqO4blC20gptzD+0FO2JQBd7s/iHSwYf4duhhu9T02NVZcYQmejdnEYzpsqRIG/H4Y
	FjmzhGt5NdROSaAs=;
Received: from ec2-52-11-215-80.us-west-2.compute.amazonaws.com ([52.11.215.80] helo=asda.co.uk)
	by defaultworkshop.klidefectmanagement.com.novalocal with esmtpa (Exim 4.94.2)
	(envelope-from <sales1@asda.co.uk>)
	id 1pblsl-0005OD-Gq
	for linux-rockchip@lists.infradead.org; Tue, 14 Mar 2023 00:22:48 +0700
From: ASDA Stores Limited <sales1@asda.co.uk>
To: linux-rockchip@lists.infradead.org
Subject: First quarter procurement order/enquiry
Date: 13 Mar 2023 17:22:46 +0000
Message-ID: <20230313152049.55BE2DC0B708F885@asda.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_153452_547312_2731FEF8 
X-CRM114-Status: UNSURE (  -0.60  )
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
Reply-To: sales@asda-c.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dear linux-rockchip
I'm a procurement manager  with ASDA Group (the owners of ASDA 
Stores) and your company product has caught our interest. 
Therefore, we request you send
list and prices of your hot selling items (products) for our 
evaluation/pick.

Soon as we receive your reply, we shall send you our company 
profile and buying proposal. You can also check our website below 
for detailed info of our purchase area and trading capacity.

Your immediate response E-mail:  sales@asda-c.com   shall be 
appreciated.

Best Wishes

Ms Stelle Montgomery
Purchasing Dept.
ASDA Stores Limited
Tel:  +44 7418367220
WhatsApp: + 44-7502985874
Website: www.asda.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
