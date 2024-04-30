Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1577C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 16:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAEqaS79KZ3AW0izHkTMIXmfUbWc9obn9P/r2Imi2kU=; b=3Od83YCX33p9if
	RbR0uXqyX116csxX+T8+eZBS8NRCT4pFtMRxb7W3MVVm4NAMyHLIuMHyksu9HhBNOWDb6iK2huOkB
	m5dVHabGGk2IxgevPeE6lHIelIm57LDKNJqkQ5mKjcZxZvZPxru81xZnaf7lh4X2/iP9dkoW1VOmL
	hoOpcpcZxO9Rby8/O1S+4V+I5wdLaMKN1YbZtMGo0m88S68l6vrCz+w1SKWp9d1jAgdrmsVbW7fHK
	HuipG8x+rnMgHjq8/chsrh4h2BG+27UJNedo0HWVdOxDlzGyIMZz+A1++0H6n5QsgU2qhR61wOcJx
	eLaqZxCNk1jaIjEiXACA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qJu-00000007DNE-1hty;
	Tue, 30 Apr 2024 16:27:06 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qJr-00000007DMD-29G9
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 16:27:05 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-436ee76c3b8so46268011cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2024 09:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1714494421; x=1715099221; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZC7KljP54si9I/OvR7p1QytBPv8oCv3FFtdLpBVVIEM=;
        b=NmPA04TJyHh1u+CIucgIZLw06MVSlaIX4O/XYHBzvy6WMpSURxX83vcYsUdDdEX8MA
         jg1Go4n9aZkLJ3k3E4sFzxZ9tGXro8lmPSJP2zGHoGwKXsRSJ5KotT/iKWum3a/UWreX
         iJsGHw6HxI8NeOGkXxI8gw+LdiN0G9P18FHZ7zyAb1sNKwu4cv4QXkUtwJkiJmfzTW46
         VWP6CXYsZsC2qEWf+9cMHekbxMgx8dP+tGMReqYH6DbK1WPvBQrcEhJ63jh4A5eKnks5
         L7bdfSOGhQZaIJki7x18yf/Iw8B0zQDOMoPanpOVxeXgvqVZeL7hpZ602/GalQPlQeCi
         3LFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714494421; x=1715099221;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZC7KljP54si9I/OvR7p1QytBPv8oCv3FFtdLpBVVIEM=;
        b=v1n4M8p/VbdBG+MAgdn/ABeN2v4f+6ZxqlNXZUQ01ESsXECfFPakNsFvATbHVQQTe4
         EtmII9zk0aT/qTMUGmxYLL7KYGxgxhEYiGZKlmx9e+FcVlCYn28p1kOC14D8d8zEDNW9
         0/I8SQ/OmyZo3U43nWi8bdh7oCkJUXeDRXJ78A7TbiS9mVB5UX9AuQdtsNyCq4ZAb4iV
         ngwQWNhvxo6fYq3S4dH9AKD7Fq5wM6W4qjln5z6Vrr80atQN7UllBb0OhVyX/FT2mWBC
         1wACcounI1yLV+fhv147k8QZycP+d6+SC890dUeHgypjrgtzE9P0Yy4aEsRIE6v8ALx3
         lizQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEmSd2kGxH9YEe7A4qmHh+pz5INbcHmsf1l2QhYVlCan9KXtsKDwnIhmA2OnkLXq7tfl98p1m5ZoxLIAmAhbHrtCZhQ1YiTF/qUKoaNHDsw3lw
X-Gm-Message-State: AOJu0YzgZuN2EreDughKO9eL9Y49X3D7joMkAag4S6ZB3CbB86uuKMGR
	1866VW/HFe9MXHcsfWVnA7eBDfYfYZnqQ3rbmciX1jRlSg9GLfjZ9S6Eh/p4gyY=
X-Google-Smtp-Source: AGHT+IH4i4XqXX+ome3EmdELyywbvX6TD934yBgrF6DZ4ror/4GM3Vhte1p+vjOEJwXaTd3AlXGjSg==
X-Received: by 2002:a05:622a:491:b0:43b:a44:f83c with SMTP id p17-20020a05622a049100b0043b0a44f83cmr5414263qtx.56.1714494420540;
        Tue, 30 Apr 2024 09:27:00 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448::7a9])
        by smtp.gmail.com with ESMTPSA id o15-20020ac8428f000000b0042f04e421d2sm11469789qtl.24.2024.04.30.09.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 09:27:00 -0700 (PDT)
Message-ID: <1ce1bcf60d8540f867b800816acecfff610ee948.camel@ndufresne.ca>
Subject: Re: [PATCH v7 1/2] dt-bindings: media: rockchip-vpu: Add rk3588
 vpu121 compatible string
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de,  sebastian.reichel@collabora.com,
 sfr@canb.auug.org.au, sigmaris@gmail.com,  linkmauve@linkmauve.fr, Conor
 Dooley <conor.dooley@microchip.com>
Date: Tue, 30 Apr 2024 12:26:58 -0400
In-Reply-To: <59899cfa3d3245309ce6952ae1028dceae27b488.camel@ndufresne.ca>
References: <20240430024002.708227-1-liujianfeng1994@gmail.com>
	 <20240430024002.708227-2-liujianfeng1994@gmail.com>
	 <59899cfa3d3245309ce6952ae1028dceae27b488.camel@ndufresne.ca>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_092703_623947_0C10B8A9 
X-CRM114-Status: UNSURE (   8.70  )
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

Sorry,


[...]
> > +          - const: rockchip,rk3568-vpu
> 
> Sorry to come that late, but I'm noticing a big mistake here. You said you are
> enabling VDPU121, the JPEG decoder. But we don't have a JPEG decoder driver
> mainline, is there some patches missing ?
> 
> Nicolas

Ignore this part, just didn't read carefully. This is about getting H264, VP8
and MPEG2 out of these extra cores of course. I still would like to know how we
will express the grouping of these four cores, so a driver can know they are
identical G1 cores and not bound to be time sliced with an H1 core like the
fifth one? I want to see a plan that will work and will not cause headache for
future work on fully utilizing the HW resources.

Nicolas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
