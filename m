Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31906C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 20:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiTjpv9EZFv75DP8WiZ8WbZnGa5XcGTimO+W62JdteY=; b=WHWALl5M8bXGdq
	mUiyhh2mm0r5OszLkLlQuE3iMUVA/EY6MBPA9/ohtDmudeNKIDNKB59BvQKZ095RwSqEunD/Lzga9
	ayz9GCcC8Vol0BkN0T6+lHp6+gAKVQ20M12Ke5tJfGKnI5pA4gIRGpktStZ/KdBLGcI9rTwvSq5eu
	QJD3WcuCDEpajtyl/+znHCIs2BapOaCC0ozt00xSUph1bNySVnDYKZFEm3zu0VEyNG2GvOWIvfM/H
	Wthqf1PMqihet4ZT6MGZQn0V6bKF9X1pxHnQCf/9d/tlHz9QPtMznlEmKtILxbZFJuRIyHTiMvnl/
	ixpVRoUygko76CBl2Fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubmIX-00000006BDu-0JUq;
	Tue, 15 Jul 2025 20:30:45 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubmIU-00000006BCk-1IQU
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 20:30:43 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-2ef493de975so3293791fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 13:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752611441; x=1753216241; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0qnU3e/UbtN7g5RYL6+3ED+hDCWkfgVIl5O8F9TCC94=;
        b=W1lb3l8pAW2/n3dDV+Tm/loTviT6T7vuOB/4Zzs+wrXsawNuOq3IG9N6N7UAP19G7/
         KRJ3WhEVPrHZ+98OgI6k+g73TZuGA2cujEzq114ii9ndr0bbmjHxfgcj3waWTAKOptUr
         HZScst7+zHQEsogM7PdvVOEm3yNRUXBEXu1XORal8kMJinNzFaIRZJF9yloE4htU9MZz
         i77c5qqG8VS9Tkk3iFIF4o2umZd8+H1UkEbscmRNZokTr4DBmI+tRB//RYmM6fpWrAUV
         vo91nHPAXCwoY+h1N5kIG5OkPW1g5vIbts7pyUNiSY5j1mVyussogfs3Naq/W8BJUykF
         kHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752611441; x=1753216241;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0qnU3e/UbtN7g5RYL6+3ED+hDCWkfgVIl5O8F9TCC94=;
        b=IMw9ujT1cBbvL5UEIBZ5pzutvltNwjlbkhi4+1ESQ+nzmrPP1EJK74+rjxhCILnTxV
         PpT4WrkxWXjG7Q/rQIifIpy8y+43yl41Kj7wf3V511f/MH5zZA6PjsF1og3LYAhIrXHn
         Ig5ABWSniMwXXEl4vmpaw5953xchxaUhvuvLAp5Nq7RK9nl2Q86zeZmOkm+wv0JJUq/i
         bgU+svi9nqm++sFs0VTty5FnJ+VXZc8mxsaX2Mo1KarnkUWL9ATa3XzpZF3nY4qyrwGQ
         UdS6YmJYD3rOOeuyDfcZgDRC6upampEd6R6lzKydPNa+JS80D8N6UfsJMvNE49E26d61
         8NEQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4+37XEfXoOvShDrS3JBn3ZpZjT5uB5Pzcb2C1kl/1T37UqhG1egtsn2xAulcAzk1tC0CLUuS8qm+b5L0srw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzWLkQ07jjLCkoUAL6auU62hV5yjzxpb3W4wP0fARlYDlM7ojl
	WFmknU/eYw88Z3q1ZguQMCdn4D3jAjXwSUQo3+M5FwzbpvKogDLw28kFyAW6tTNXacI=
X-Gm-Gg: ASbGncurK2ztYwPakIXvVgt2Vhlln6PpihvUGrjwHkmXWpzeQxthNM/AqdRupkBvDmg
	rWHa2kEU7uqxkf5BbBrwT2daN3DQrjXa6cdL+COSdKFkBxxh0bLtIxKeiY7UhlZ9BGR6IVMfUuF
	2PNJrr/5jpV8HV8BAdDmZc//yd5ZiWfzjMxeeb1wJ8e0IQmjwhKIbSqIC9SoYmHWNeIvuTKB3xI
	sOMa5ftJdi5sgjEvCDzrr8nFNpzyAvB0aeZ9FXX0Mx1MixWnn6z9kRzypsPIlBOc46g+1FaxLWN
	oA9LDp+LmInjD3e2XKMDB1utIHScVMj0FpvFAJRAiFkQVKC4YUI5+4npY6htT/8UDK8rceb+bev
	fcXnakrHPpxYdZMrhVbHWnPBEIRBt
X-Google-Smtp-Source: AGHT+IG2+pwfhzJLrz8IScyfJm6Y2ziaIzZQnZsetieX7P83RKFLQioSOUBeRHkfbvI6bsQBYcAosQ==
X-Received: by 2002:a05:6871:780f:b0:2ff:8956:fd45 with SMTP id 586e51a60fabf-2ffb1eafe32mr237804fac.0.1752611440637;
        Tue, 15 Jul 2025 13:30:40 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:9b4e:9dd8:875d:d59])
        by smtp.gmail.com with UTF8SMTPSA id 586e51a60fabf-2ff11235201sm2896491fac.12.2025.07.15.13.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 13:30:39 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:30:38 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] media: rkvdec: Fix a NULL vs IS_ERR() bug in probe()
Message-ID: <e4d9553b-34b2-4c2e-8d56-f86f3d51fcfe@sabinyo.mountain>
References: <696219e9-a1c7-4c87-b15c-1ffd42c95d58@sabinyo.mountain>
 <6ac8b8db02190da7d2edc9ce4abe5e7a7cab70d6.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ac8b8db02190da7d2edc9ce4abe5e7a7cab70d6.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_133042_352623_4C09CC95 
X-CRM114-Status: GOOD (  15.87  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jun 25, 2025 at 12:13:20PM -0400, Nicolas Dufresne wrote:
> Hi,
> =

> Le mercredi 25 juin 2025 =E0 10:23 -0500, Dan Carpenter a =E9crit=A0:
> > The iommu_paging_domain_alloc() function doesn't return NULL on error it
> > returns error pointers.=A0 Update the check and then set ->empty_domain=
 to
> > NULL because the rest of the driver assumes it can be NULL.
> >
> > Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
> =

> Oh, sorry about that, I'll will test your patch this week, but otherwise
> looks good to me, fixing yet one more error path. I'll take the time
> to test dropping the iommu node from the DT while at it, as I simply
> don't remember if that was re-tested after that change.
> =

> regards,
> Nicolas
> =


Ping?

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
