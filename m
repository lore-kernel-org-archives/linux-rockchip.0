Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E56DEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 07:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FJTHZe+4qCNtKuciT01JiPN6PVrAJ8PMsLyOnXEapLo=; b=3w0WZLxk3zaNgQ
	JGcz+31a0uKqa0HFeNCaiTcp0WlZgs33me7qduowJ9jNOeQcYsTaoAjImOMkNAch0VxzphNoJ2T/x
	U+Q/dqbwL/udZ57nKfq1tb5VrmqXfj+oL7sFeiI+kYxiUPV80PmY+KUOH7yi0fGIusuLhfE0POZOe
	D+oo4kw9l6ZHDk6ATg8SeMLsW1ZY5nk05AvbfQeNG7nwyZTPkoUQD42hcUO9X/c+eKePg11ZuA8r6
	HQINn54wqTzUSC/cfovJxsMSL+l5SMG7Nofxq2a4XuWuLsqQkUOhJMNqCEC5cdnMHRCkB178teIgo
	hi+HHi9qbyqg/n8hSTKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy6ab-0067cQ-EG; Thu, 24 Nov 2022 07:24:05 +0000
Received: from sender4-pp-o92.zoho.com ([136.143.188.92])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy6aT-0067TM-JT
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 07:24:00 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1669274631; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z6C5JHQSntPSThpwUMQBJgrrjo8fQ4YjaSlnQfzp06ZzfcfhDMb9EDDZY7lAEGKauaRNESN/nu37IqncDDmI5RuRdKhazPiW8jQMRmcpjmZV46mTmpHToXOP/bDSvHkPDaDVQ99T/LrDFzRnFR1gJ1Mt0o96ceOz5PKlFd+KksA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1669274631; h=Content-Type:Content-Transfer-Encoding:Date:From:MIME-Version:Message-ID:Subject:To; 
	bh=548Kpdgt5EtgkCl7eQccFbym3L7czFhrETLaaApOQDQ=; 
	b=jyhsBTLMjBdCxWs8R3m2azpnH1XBIVpv5eYytCxNbrb+U2z3tgj6RR6SZA4uiyxms1y0XrRxGDAeIo/TC58dao5q5I19VIKrXHEItaDMNmF6xpenf3azr2zxGDkW0KAWF9bk6tZuWQFtFTxfQ81hls3C8gKcgbhaF0V/n+XAn2g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zoho.com;
	spf=pass  smtp.mailfrom=hmsjwzb@zoho.com;
	dmarc=pass header.from=<hmsjwzb@zoho.com>
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=message-id:date:mime-version:user-agent:to:from:subject:content-type; 
  b=DFnvHkeT1Ks/Osvr+ZlWUAn7gyUyMQpH5JCtM2FpWPblp4h8EDdh+LQqHjDv9tTN4I4p0ywEbQXW
    9qTqdkYbAnGPMXJCTZ63B/maEL1x0vZpKH5zHvZixbfCUcPpDEw4  
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1669274631;
	s=zm2022; d=zoho.com; i=hmsjwzb@zoho.com;
	h=Message-ID:Date:Date:MIME-Version:To:To:From:From:Subject:Subject:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=548Kpdgt5EtgkCl7eQccFbym3L7czFhrETLaaApOQDQ=;
	b=gPjSym+UVu8S2GFD1axS1zlQ/HICEfmN+y4TTMyqfe1FnFfLx8VvMUwvJZC3WD/p
	/XBMHG0QY/7/itNnXT4Au7dPpZjGwJn10BlWyviA/iI837rv4JyEKrtAuW1x/uZ2zRd
	AGVfSTt8t8t46FPx5F5nPYdkxFfC6+ZO6Tb96a4k=
Received: from [192.168.0.103] (58.247.201.177 [58.247.201.177]) by mx.zohomail.com
	with SMTPS id 1669274631365279.5946331827503; Wed, 23 Nov 2022 23:23:51 -0800 (PST)
Message-ID: <70d55b2a-df80-8558-099c-db8aa9c821f6@zoho.com>
Date: Thu, 24 Nov 2022 02:23:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: linux-rockchip@lists.infradead.org
From: hmsjwzb <hmsjwzb@zoho.com>
Subject: help in build upstream kernel rk3588
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_232357_754188_C0DA1270 
X-CRM114-Status: UNSURE (   4.97  )
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

Hi Guys,

	Recently I've got a rk3588 Soc. But I don't know how to build upstream kernel for it.
	Do you have instructions for building upstream kernel for rk3588 ?

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
