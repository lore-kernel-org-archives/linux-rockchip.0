Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7BCC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Dec 2021 09:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ilsj0ZE8zORAALuMW+H4NsUadivzqYMJx1XZD/7oDVw=; b=QK5LbSU8alGoQh
	UW9WmoY1TbZWwgR2tRSGUWYjqjDlEbkzuKvjMyTB8zn6OQc8dIcwX7R5IwFl7gRnP0vR8feDSA3O1
	1c5HxObTLWEA1m+UDnwxBBUQ+T0PLrM+KwYuw9hV31F0q3CVrRmIzacZypg6F0lLMTPgDf8SSc1A5
	hSx9wOpdDPdLycR5ewL7crhufhrBYVn2PaUs/TIDX1vxHo1jDw+ju6njHohsHyKuQ7N/zVa8j4//F
	JFF2VHKu5C7R6sq/FgRAGDZLHCodFKjWDQPEl/Dz+edt2wiNTxDXf/BA9NMB6CmmsL7E3dFzVXhCi
	Sv5mt7Wf8cc0jJRLYyIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1Pqo-00FPYw-Dy; Sun, 26 Dec 2021 09:29:58 +0000
Received: from slot0.jllresort.com ([62.197.136.5])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1Pqd-00FPVP-KX
 for linux-rockchip@lists.infradead.org; Sun, 26 Dec 2021 09:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=cN62kxeqJLoGHYX4Vii6NlEm9yQ=;
 b=guwkpMBvXBqig8fVFs6BsICmCkaPZEjerIiT1DN8Rz1Z/WyDeSz1vhZWccAeh06ODdSo0Xzq5tys
 LIiXdKWXAR32DtoDvOlugRCoeCqot7/Arqodbu+NIaFAm1na1ICSoMPDoCxaU1ZViVDR/nxyezRd
 NKw/rnHnT+bE9/NKYnRenzK2op500rPPXtjaqu9jdx8aCKYB6spm1pH4x0YHgsfgsOniHqGNvaAv
 mj2cL6DtPpqvutkd5L6ns/vlNA+TWpOdNN/Tr3tB1Uemi8GuI0onaUQEN5I519zhGtbbQtYGTfTl
 2On6bPzYD5jIJjy3WP5g5fvUmA5BjEghQB5zkg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=Bxm2hF8xRkNJRnBDjTdBrQA7OPxgkaQLWRDs8VN7osZaxLdqPePUHTznBPSq4dpic6WwtecbpoRC
 NH0T5zwrygjd8NnRGKDt+kDl+6LAiNV7XrekLCtT0DA/usa+nkHiPHWTyPBcNZooavz3kFyq1LqR
 StJrXNwL6YG1yauT1Ehg00ck4ktmc23rjUY2UMLZY2R2edgnkvqCkNhgktOf7fXCMIAko/BnsTDt
 RS7NVBlD5UaBvEKsmex50KYJ4Chj2vKQFzojv99Fbes/O8X+oJarwQh7LkTmA+CuqrXCyQ18sezB
 v5x6eXxg7CPX40ZOBSMNM+zK7RuhpjULA2epjw==;
From: ele.mon@jllresort.com
To: linux-rockchip@lists.infradead.org
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:26 +0100
Message-ID: <20211226102855.317EF65F345EF53F@jllresort.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211226_012947_847160_5F7FDA54 
X-CRM114-Status: UNSURE (  -1.09  )
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Greetings to you linux-rockchip,

I was wondering if you got my previous email? I have been trying 
to reach you by email linux-rockchip@lists.infradead.org, kindly 
get back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
