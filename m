Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3696AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8VJYgGNXB6UtiniHMwZoYRFg7B5iyie2r8ZtTN9Vo4=; b=agwPvTRoKXfTod
	fltB7jAwybNNbL2gfdR/8FdlgRy2BVDRT4yMPB1DjmSS0cSk9vjjVfg2W9YF5B30TZvY1o8YVfWz7
	SeyCkW0UkPQXriYTXwySmb/sWlSPF/JmsyJQFQW6FH7HEWw03ZzPssR8L6j1gUXkJ9ntDSWehoFyK
	YseZ5H9txgyRmqJBTg9UJYaCEm6YK/voPosBxiZ3saKKyYulHqHapilr7D6kiVjDJM1pTWb/mIzct
	F8+mWHs2JTPLULsIMHY+7oUd2Q7V3n7dhnVWfmTp+MBB9H0spjcc34/2OOAu1+mRUW9AF9LxeR6+/
	TCEIIL3o1GAOnyV4itsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPo6L-0075D2-2m; Thu, 03 Mar 2022 16:14:49 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPnxc-00726R-Ku; Thu, 03 Mar 2022 16:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646323530;
 bh=D9W07+OUMPXR+k9aCYXbl5HFYe+LbU3RKRHJ4qCmUZs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QHh6XtUf+gkd7zsLH65TjCAokeMYNZ/GYJ2qPRNmeeam8OJa44RsoDG4wWiQH4SBU
 b7mpi0rkgAoi8afbuQSEyXAeboWcPyp5j6tgAH4zl8HuGMYK9w28sRzStHx7htw2fK
 KYeUVOdmZGi22OlngNoH+NBKtgxBGStl+hx+lvik=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.125] ([217.61.154.125]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Thu, 3 Mar 2022
 17:05:29 +0100
MIME-Version: 1.0
Message-ID: <trinity-3548fe76-aeda-487b-85cb-a20f012e6526-1646323529283@3c-app-gmx-bs69>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Aw: [PATCH v4 6/8] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Date: Thu, 3 Mar 2022 17:05:29 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220228135700.1089526-7-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-7-pgwipeout@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:OTSJ7vnq/1y0cm7ECft7B2tnXkINN1XvaqtYb7IN1VdmMfKEEaGIIQFQkKEZ/NQ8UwKPj
 pVd9Kwpgv2wl/7qG2R/EQl1RZsQUqs2+pqZEtNR0FqUIQk0IGNEdVze07a0jp5ynSYiqeLNRiSF8
 7FyjSckjXpRD42/3cPf5ZsHS4zWvVqWgyjZzCOcAsv2rOseHWRSm9Gw6ORVihnXuZ+LAVqkNUZxf
 mDtZY5AMpWjjpOUwqNkelBVoZn5yTVqtQOfWf8drPIYXvshoDl85LSZ7KLbfDew8FUwj1LCKP+bk
 2o=
X-UI-Out-Filterresults: notjunk:1;V03:K0:lxoU31qzXBQ=:Lp28EmH3kffIc5BSoFD/y/
 xnIsubJq3YSiF8haDVld0baUcsXfNe56uRR7taGOeVBrMPF+bUeDqJetqdTHyfQOottRjGI70
 kwNNJJkUPx1dBDicEENJjAerI+l4ir/v2wQ/AhsCiKCobyUnigbwWiS3FVvmiw7Q/KU6HRz10
 U4d9jaHMrBH9XSrBwT1h8Q2ZkkN3Z82y0US/V+eqhSHC/xzH8qDQ3lQLU6/iR+CsKkYBZY8Bt
 257Wiz5/knrbjk7cjyke44NsdWvhRb1XY5aK8lVEuv5SkS6Ojs7sSYAVcVFnabMs8vtdOISqg
 AjV63yyxpYAg00N+nl2DGrJZfI4J0TzYpfltSQL+0dB3/O6/ahqJuEnQqaKSmuDOVqEMDlfTa
 qpELMHXRpLny5joH/htSRVzlfObA1UnjIpUfqsWaDqlGTIDsXdNqwMLAoSwZlRhVdAHNrTyoU
 vzl5ydgEVWCN/jKzH31WRcsWn0iVYp2yBoR8lHZVqIzTvCSly4P/PuSGgo/g1WReb9SADLM+Q
 vuB9dMwsRzhQ1DxEQFGR061eQ2KchEpDrzpEVL/e0bo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_080549_087952_D43C60C8 
X-CRM114-Status: UNSURE (   6.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Tested this Series on my rk3568 Bananapi R2 Pro v00

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
