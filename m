Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B68DC36002
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6x0ByDviDVAjGUKQvKTiPQVYipSinsWO44MGDC8HC0I=; b=I41WtDrteAIVcD
	qHTxOlHIU4zfmMx2PMgezEt+I9nERobUeV3r3E7BSyQWOVCCCeXYF8VmDwAeQEhJU3LjMon0v+HO+
	OZxGHCFBCutQ0BeTpUdfs7DkIAMcZkec8ubcLZn1RwfWvQNKN/bg/VUHERKP1EHAUM2g5ts9C8BNO
	8EHHXj7zd7GNapO6pPgOTWlTB0fDfPCVzA8A+XH+qqCagzWRGUFvUePimF9R3XxIeCoam3FRTeyvK
	UeihOgHhyOJe5Gmj8ubJvDC0feerWwVLldb+afDEuIYjDHZQCaKMxJ/J2P/k6Ew5Aif8XCbbpWO04
	yWi+NA5dErX8bU5KP7eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twi8c-00000003Ipo-1JiF;
	Mon, 24 Mar 2025 13:46:46 +0000
Received: from out-74.smtpout.orange.fr ([193.252.22.74] helo=out.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twi6q-00000003IXZ-1e9H;
	Mon, 24 Mar 2025 13:44:59 +0000
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id wi6atJBomDCLUwi6etz7Et; Mon, 24 Mar 2025 14:44:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1742823888;
	bh=Qa5om3v9/K/7zpjm5PKgDCV9u2Wr47TRWbPt/isnl+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=bpuE5NrmWf/UsjAJvVswgv0icGAZ1zyNynsHEzuvm89LLVUx0xIx9BhCFwWp8uKPC
	 Z3/O8ApaxqLmSCFiXI3/b401O60aYYUqXVsW/l5eqjjpwPvNkj1jpnCaJGvpzdt4fy
	 1uI6dECsMxCUronlLn9I5tVTU45CmFvJS6GK76XglxdP60k+zO72JxoAyntyWugfkF
	 2+daiMQ91FhVaW1N4hGPVnbeWqH7NhAq/R2uCiKA28hz22L6Qiyk/QG9fAQudEJHll
	 xoT853egqorC8pmtINZ1pC291TXclCLQlqpvkg5l8F+aaMRAjrBVFzwc0VmxVc+9kL
	 U7DsYiG6c0lfw==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Mon, 24 Mar 2025 14:44:48 +0100
X-ME-IP: 124.33.176.97
Message-ID: <8bd91034-cc4f-435d-86ef-cc76fa0a3612@wanadoo.fr>
Date: Mon, 24 Mar 2025 22:44:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] can: rockchip_canfd: fix broken quirks checks
To: Weizhao Ouyang <o451686892@gmail.com>
Cc: kernel@pengutronix.de, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Marc Kleine-Budde <mkl@pengutronix.de>
References: <20250324114416.10160-1-o451686892@gmail.com>
Content-Language: en-US
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Autocrypt: addr=mailhol.vincent@wanadoo.fr; keydata=
 xjMEZluomRYJKwYBBAHaRw8BAQdAf+/PnQvy9LCWNSJLbhc+AOUsR2cNVonvxhDk/KcW7FvN
 LFZpbmNlbnQgTWFpbGhvbCA8bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI+wrIEExYKAFoC
 GwMFCQp/CJcFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQTtj3AFdOZ/IOV06OKrX+uI
 bbuZwgUCZx41XhgYaGtwczovL2tleXMub3BlbnBncC5vcmcACgkQq1/riG27mcIYiwEAkgKK
 BJ+ANKwhTAAvL1XeApQ+2NNNEwFWzipVAGvTRigA+wUeyB3UQwZrwb7jsQuBXxhk3lL45HF5
 8+y4bQCUCqYGzjgEZx4y8xIKKwYBBAGXVQEFAQEHQJrbYZzu0JG5w8gxE6EtQe6LmxKMqP6E
 yR33sA+BR9pLAwEIB8J+BBgWCgAmFiEE7Y9wBXTmfyDldOjiq1/riG27mcIFAmceMvMCGwwF
 CQPCZwAACgkQq1/riG27mcJU7QEA+LmpFhfQ1aij/L8VzsZwr/S44HCzcz5+jkxnVVQ5LZ4B
 ANOCpYEY+CYrld5XZvM8h2EntNnzxHHuhjfDOQ3MAkEK
In-Reply-To: <20250324114416.10160-1-o451686892@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_064457_640003_1222AF60 
X-CRM114-Status: UNSURE (   5.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Weizhao,

Thanks for the patch.

On 24/03/2025 at 20:44, Weizhao Ouyang wrote:
> First get the devtype_data then check quirks.
> 
> Fixes: bbdffb341498 ("can: rockchip_canfd: add quirk for broken CAN-FD support")
> Signed-off-by: Weizhao Ouyang <o451686892@gmail.com>

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
