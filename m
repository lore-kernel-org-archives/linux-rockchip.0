Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BA5C5B549
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zc8KjMMaLYTa3T9SbPHTnM0ZxRMcwbpm+klFdk9tOF4=; b=19CvuW4TvKJnn/
	kJxl1UsRJGmgmjPkmcD12j5rohr0B6CeBf20B5XoMIQNrCtpE5LsBdHcU55i6ZlbggeOVX1WcqhU9
	3nPNsgqMLz5eAgoO6aMewwAWfgJs6AiwI6skpeu4oKgs3yUftImWjkN+PntUCSLwDGKTmyjOXw4pc
	eufzL6/WzWQAG5jBnGUNfXRjtw9sCylGmI2Ixrr2NZrQaXBwEiTkLNWAZxPTZ4LqfWUm9tf0jXpxa
	Wn5MR8zyF5QvXRlKUYkniUQWrXzXrPCKtPTu6sPb2yUZOTYgnz7dr+NAsnKCMDxwo58PY870N5AJ5
	vQ4gpmHxiGJ4BXYS8siA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmQq-0000000DDqv-3GzV;
	Wed, 04 Jun 2025 11:37:20 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmQR-0000000DDoY-05s9
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 11:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749037013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C8a5MQW08d15nKShazDfS7QPFXLU7R+rb+4mnDBz0bw=;
	b=H891nwXqijlkrlVPCGSJUmdf87y5zvqeAMB3QqosF3Td8llzRa17Li3zSQwGhDbxKvIMVx
	ssZuw6mFTLVLHQ6fl1joejoWRZD/vSHTSANln5kL1HTzGZEtQXpiPDU4GByceuf9u24WWD
	FF7iGLe1rVbxfpYAkeQIW0Q9H7XVrC4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-456-WVOuJG-TM_m7vCG5Iuuw7Q-1; Wed, 04 Jun 2025 07:36:49 -0400
X-MC-Unique: WVOuJG-TM_m7vCG5Iuuw7Q-1
X-Mimecast-MFC-AGG-ID: WVOuJG-TM_m7vCG5Iuuw7Q_1749037009
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-450d290d542so37116215e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 04:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749037008; x=1749641808;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C8a5MQW08d15nKShazDfS7QPFXLU7R+rb+4mnDBz0bw=;
        b=H1rv5Z9DNdOavh1Lmhi997Kziw7yw+0P5N/AwiO3Ps7VpC9qV35Mb6rQqyZdQFCf5W
         ou1GK8c4kDNV6IgHogovE1DgLL1PsHIHioaWRDAqJOCfxxnY17Al4R/RQkUvPQPAaiaB
         sSpKkspnChbGQQKY7KBx3gNIIHTtIAk548QKGFtPErbiATs/f67E+ToLWFY7Ue1QVz3/
         luWxZ+uG9XxMsSQ71VQb/dAxgk57ECJcEmaGkLjyziSZtSO5XBI08XzKiDu8T0/qjy3/
         o4W4kArCUm3R66OIHW1fiEFlI+zZ0FtK2Ib+k71ziNt5AeVuvbbbor7CsVMtoaqugest
         Q82A==
X-Gm-Message-State: AOJu0YyV+0sZaZvK2hW6PoScmLpJxUQ11F1jVN949Z4RqtUDnNw1wGk/
	p+RBJUWooPppUuQFtpYZDhUMnlmDlq7oaWxa6KeKRdMnLHRL8gtgSKq8bGgUdWqFeMv34O30ZEO
	siGdZysgS6aIsOiuOPGGN+idO8DZHhZx0fX55aQxVgb9n1YBo6meNplmp1DyXoa822K0XQDMd1g
	==
X-Gm-Gg: ASbGncs1BjoFd7mHokRW3+lsPjgOFGOvz24Bg4D7FzbmjhGvlCJ3Yj4cUYglP2ZPCSw
	Xv4YXllZnsJGtXgOYqXZj1MsPAOrYmsdX1iMKPHuFVuChE4VwTk1dSAe26e9NRRhlU0vCQsGS+0
	VDIZPxN6ZPaBa2JzagIEIHYRIX5UQuFyUkClaO74rd9dIgb1GcjfkjgcZVNk3GiE3QBZ+yOFGvI
	07graju/jrF+ZLN2w/exPZOd/tFBHHfwiRzS9BtuKEGOfRrM3Pcqd+DJ5CJbW9r9QdwQY5lBr5F
	nq4a6zeuVsgED9nEU3K/GURUmYbCd/mNs1IM5fsmlhHx0dFqGReFsL5ZROQle751HOKjqA==
X-Received: by 2002:a05:600c:348c:b0:450:cac5:45e7 with SMTP id 5b1f17b1804b1-451f0f00596mr20628205e9.1.1749037008617;
        Wed, 04 Jun 2025 04:36:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9aGn1JqRF4v9GdB7S5N+Iv4QLVcuOxMVMUOmJ0PIBUt0HXZfcX/tKKMNX89n1OdgImFWvrQ==
X-Received: by 2002:a05:600c:348c:b0:450:cac5:45e7 with SMTP id 5b1f17b1804b1-451f0f00596mr20627935e9.1.1749037008186;
        Wed, 04 Jun 2025 04:36:48 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f8edf9sm194938895e9.3.2025.06.04.04.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:36:47 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:36:46 +0200
Message-ID: <878qm7agc1.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ftkr2zkv9kmkAX1qvY9Xt2ZS3Bg4xZZkUL1ElCG0Bpg_1749037009
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_043655_133780_B99692A2 
X-CRM114-Status: UNSURE (   8.73  )
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

Chris Morgan <macroalpha82@gmail.com> writes:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
