Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A3BEB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 12:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qy8d+iai+SMJIqLJouvzZmZRiIj2q1nMKwlUYZ9fLt8=; b=Jzu40kTRdjKGcn
	W+ZWQrQ6siOiPs9QkATzoDHmf3aRr5Oulxe4S/rm21yzBdBGcx5ht4085pmi1p1wGufyFa4oT6ciX
	rv7Wm2q9QSt6ugccf7jMlrMW/RQf9dJmZL94hdKyKAQkF8dql3K8sIWdVvLkOGDQKVm4wyw2CSA/W
	zgYVPQM6xjwGcrgOqgzOl6EFCVW3IX4djuKWX2v7DAHxOeNxEW2Nl8LadfOdjNXHn6FaOomeEpc5C
	KtBg0u0qvbRxOmFgiCJvOdSxEeaY4OmVpg3EJQ2Ke1d1IKf2ZwNjAqnddcU9BA06JX4KX4YSxYkPL
	xNz8eScCuYll9EVvnMKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwn0-00EVzA-2w;
	Wed, 21 Jun 2023 12:18:22 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwmy-00EVy5-0j
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 12:18:21 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so7881466e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Jun 2023 05:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687349898; x=1689941898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pZTs7wMZ0BYXuZPnTcmyw2sMgPd+LLhQOmvBxF+zh0=;
        b=hPY3aaZKh3+hpknbkVrtmxsGiIGpyQb7f+K9ZaIrdyRzeHndbyBBituhAfeeCH+Ix1
         sT925xkkVEVyIJn6zsVntEvtPIX4Q/UhzHeBUBQKOflaJYJWKcAQvXwxDaBhu9Il6aeA
         bWibsITaEbM5lxI4iOpnHuVOBb+0g5o+55eq2givzfpZHbrX/9NKs8awvu5hWeIRg7OH
         jWsty0b/nP+hCKVM5k/pSvuS0ZFGJK6Q5SMaRUOc9bAZYhmntXEB3GIWGC0fpWJKONsk
         28g4WmvNLZWKrn+7fbaK1YTvXSyPCvHRncZZWyIG7bYweMBihyBzRKIkjl7q+FK4lCid
         EWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687349898; x=1689941898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pZTs7wMZ0BYXuZPnTcmyw2sMgPd+LLhQOmvBxF+zh0=;
        b=iA8GwyQ1+w053ShORpCnPjVE0Tyl1Hg+fP4SGmtIlqVEvDab88tzONnjhXYGpVM1PE
         qlBgf9yW7L4rImikGe1+ZhxeSejCWOFxcATCTqTCZx/oNQl6DwZWJd1lqfw0oawKL8jd
         XJK6Yg+3WK2tR+JpRlO3waW8PihB/nKJgx3x/QHrUQo7zNwOYkdkusXoTRl+ogVx2fu8
         3Kv5UXFn0Ee/gm7taOfYxXOQP/42Atpg6dTiJDo5ADok7va/7ah7X7Sh6pSVIT0Ig6Km
         bc8wuJlZby/382cc32f6qOANmi+GwG/jWFV9ivzWJoQkaPVY278XlC5Cqnuw+ffQ1NhP
         URxg==
X-Gm-Message-State: AC+VfDwg4M4lXGQK7YX/aSuOUdxYRN8Gtrf7rHCJ6KRa4+063qCM1YLC
	cmXN8Zwmc6rSEjkgBHgJKlBQmeWBsyRh7w==
X-Google-Smtp-Source: ACHHUZ7RUDikRcO1bSyrPSV6dRKWHu6Oic1opMvMZxTIQ7EEmU1OIBYEkfljxBhr3LduxHDLt5XcnA==
X-Received: by 2002:a2e:8443:0:b0:2b1:d588:a1a5 with SMTP id u3-20020a2e8443000000b002b1d588a1a5mr9268781ljh.52.1687349897805;
        Wed, 21 Jun 2023 05:18:17 -0700 (PDT)
Received: from emma-rogzephyrusg14ga401iv (sa-84-52-56-253.saturn.infonet.ee. [84.52.56.253])
        by smtp.gmail.com with ESMTPSA id u21-20020a2e9b15000000b002b44b8409b5sm887141lji.75.2023.06.21.05.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 05:18:17 -0700 (PDT)
Date: Wed, 21 Jun 2023 15:18:06 +0300
From: emma <emma.t.christy@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Subject: [PATCH] media: rkvdec: removed redundant blank
 line
Message-ID: <20230621151806.6b56f121@emma-rogzephyrusg14ga401iv>
In-Reply-To: <2023062136-drench-pasty-79a2@gregkh>
References: <20230621092223.10805-1-emma.t.christy@gmail.com>
	<2023062136-drench-pasty-79a2@gregkh>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_051820_258448_76A94FD5 
X-CRM114-Status: GOOD (  12.91  )
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

On Wed, 21 Jun 2023 12:51:11 +0200
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Jun 21, 2023 at 12:22:23PM +0300, emma christy wrote:
> > Adhere to Linux kernel coding style. Removed redundant blank line.
> > Issue found by checkpatch.
> > 
> > Signed-off-by: emma christy <emma.t.christy@gmail.com>  
> 
> You might need to write this as "Emma Christy", right?
> 
> Also, your "Subject" line has an additional [PATCH] and "Subject:" in
> it somehow.
> 
> thanks,
> 
> greg k-h

I am sorry for the errors, I am still new at this.

I did mean to sign as "Emma Christy". Should I resubmit the patch,
because of this?
The extra "Subject" got added during "git send-email" and I didn't
notice. The extra "[PATCH]" was added by me as I did not know it would
be added automatically later. I will not make these mistakes again.

Thank You,

Emma Christy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
