Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 383F2CDD0FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 23:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfOQr7uif+JpQN7NwCyx7zmEVCP5pCV4i4bH0AetjAI=; b=h/R4ubDl69DUiu
	NYsm4HpRqvvE8x1Ymse6364Wmvclw2rZZamV1h7X1s2X9kTP0Jr/Ke6jvaphSO1cQjpP2irYE0/IM
	FIEXu2vgWfZMepH3NeoxDF6izZrtPMrKhvuvtQcwWjvgoMW1O4XAy62KFnQ1xuI16TT5UBdmhnlAe
	Eu2aukc8MN7ETpT5ck0wr66xr0AE8XwOdWJXW74zlNB47aa4jVq2FutN4RUjYoCsUDuffYkGmUwic
	D8vV5oHbI2knlpmmiMGenX6aWWxGeEAkloEFIEZMgGPnZgDNdk1QrJiX/AC1CcvfI+OL2amgSiNLZ
	ts2OzN7xWijjx/Czuguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3NrM-0000000COW3-3WVf;
	Tue, 22 Oct 2024 23:00:16 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3NrJ-0000000COVQ-35rT
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 23:00:14 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-37d473c4bb6so5543886f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2024 16:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729638012; x=1730242812; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VzETPDEVDOeG8DI0llS7/HcQMEr1POVUusGv75sKdl4=;
        b=ChacAwvJwqYwEPZfbamUA7e6rwT75t3jPQV00Eiq9+n0ErnuNXiiSPvn/U9UCGICo3
         Qn1CnmvL9QDEpJiC3ka9ea9UYKbSRpsQUlx7KcaHMI05w3ioavN/cN5ejYihpvJfJB0z
         hkUg+1l0CCXCqB9kFKSfTaSbeXKnyWWOVLfnu2DhNt8pzLUEeItm+tSfH2pyeIMcEn12
         XABkW9/KHT5Y/P628VOQg9fc36ErX5L6gIjFvRESFZg6qoWqwqgrnpxigOOFjPFqD2ff
         YvknkCOHQTqt4CfhQWP8rndpXMG7PmnNd6OxjazvGq1BQXBjsWpjCcjJrZd6PAEKBZe4
         mXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729638012; x=1730242812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VzETPDEVDOeG8DI0llS7/HcQMEr1POVUusGv75sKdl4=;
        b=fH0VwM8ZM2/2YjmO37eVaBbVwJLFBCq+fyKMmsa/Fv5TiAH876jt5RbNSdLpJ2UYDt
         j2OYKePs/LKSX2F2TztYnbhUFq29Q82ZcAqyEh0z35Oiut/EfdrhEOuj/MOMkpUULKku
         n6EgfUCtcZBnP3COPNRS7DFiOzMeoVA4wjZ4ulIChijikDbNEkuKyu7Uzsg5Ta/xCiz0
         an2ugrIOD5Zp3hMRCNhK/mJZ4yVzgQL2rul7zJes/kj87zsPXywtUQYb3Rv79A2Jo9er
         ZGUWoJdSWPgSo/5Iv+Kp6LOUq5/QN5WtYDd65Qp/VEL2bNtHu1Ie0lSuh4cW79pDv4AR
         v4gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUCPptmeGxmJ4wKSA2p51/rVx+pMX+eemdABu6TCczIim9/neLOZ6smZHCUBzb+GnnKUMYuJ3Nr+gv4HHn5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhI8Jc9iKDiXCHvRqzHvWG0plmUSagQazXtn0fViTBVEsSNFIq
	zRDK3MLJgnRysSouZLrUfS+TBtrq/jezhHy77WySSiRS/yfNR4umVl3IKF2uDm/84RBKTxWij2x
	BfbC8M4wH+1TycQZDX9a0nIa/4lcJbjI3zWo=
X-Google-Smtp-Source: AGHT+IFbHP3HPBbVhA121f+3pmlpNJEaalobk84DGbh6gyZgDiKCyIgvrVBpbG1siq9b701TeomrezHd4qnvsLkVX1w=
X-Received: by 2002:a5d:51c4:0:b0:37d:47e0:45fb with SMTP id
 ffacd0b85a97d-37efcf060f6mr426878f8f.21.1729638011810; Tue, 22 Oct 2024
 16:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <20241022224653.1483-2-honyuenkwun@gmail.com>
In-Reply-To: <20241022224653.1483-2-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 22 Oct 2024 18:00:00 -0500
Message-ID: <CALWfF7L4KLt6pu2YJX1uuujBwgN0yR01NGP2jkhRL185Ogk9mw@mail.gmail.com>
Subject: Re: [PATCH] pwm-leds for Orange Pi 5
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_160013_797411_ADCAB780 
X-CRM114-Status: UNSURE (   4.73  )
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

Oh shoot. I forgot the subsystem prefixes in the subject line. I'll
add them out in v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
