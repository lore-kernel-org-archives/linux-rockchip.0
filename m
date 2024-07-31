Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 793CCC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 15:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajD9BewXFotKhivxDAQevdurnAWhNE1pA5eOK+Z9xF0=; b=Rv4LJ/po455aZq
	EKAPzDKM28iHNaqRd6V5vGcOxrUrGekZB95pTmUgC5lvZeXk1cVE+pXSW98uY3aTZYeKuINqWaGUk
	iIqU5hL6u3tngIAZtuF0AanrorFSs6nJshx5HqYvQkW0xSIdT3l+Y1XpvCbQvpjPP6UhabFYvdXPI
	SbUIenglN+o9DKLZXPFIZAjhYBF/sLbbrXH8n4dBn6ycvU/H5RKXnRTHUwJ/98QPwHqe5Wz8M0jC0
	/xuHfAFozbMhlTBJQ0RUjSmkw2B2OOYr45k9lTdXWRYJTS+Bj0zgX/ZjB/JDlL0vyLLWtlNkC4thx
	8h5X6n5+Zu+EExBEnK7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZAzt-00000001eLI-2Y9a;
	Wed, 31 Jul 2024 15:12:13 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZAzM-00000001eAZ-1qCf;
	Wed, 31 Jul 2024 15:11:42 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1ff4568676eso6113435ad.0;
        Wed, 31 Jul 2024 08:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722438699; x=1723043499; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7yNtrB/3n0Mce44ws4XKXQ7nTWEMlz6LuFf1Lk+mlnw=;
        b=QRgPE44AhkwVZ27GZ6N4T3snfs3pBv0TqmtZPLmAGmPtGPVxrWqQxTzZAfA4O8MlrY
         9HaAmxATK93k9avEV+iJ5LnI8QYwtMrLW5xZ+4ZBmrj3HYpjqyyaz3d673UB1Abz+390
         XI4BSoiAEnwucqK3yCJAPv9KPn9+nLgA+2b9L1JC7DSVF1x7Is0/lXkY/j6eqzPxqlJa
         fNk6ocFgkaghv08xHbrOJ+lbg68AQLcnY39MuBf123TpU93uua9PFhkG5qYBlj976fhv
         W4jfdRPLJji76UeoI36xVY8yOE3MStCusJ2H2R0zzYnfcZnrtXPyCsOQ6fOE1dfPtjAO
         q8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722438699; x=1723043499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7yNtrB/3n0Mce44ws4XKXQ7nTWEMlz6LuFf1Lk+mlnw=;
        b=byK8GYfgqOcO4tR3s7lxRuQcZFs+jTuBhGibtfgH1+AdUB13JwIeONzLuJf7fkBwAo
         JLFAsqVSIsBJmSnRdCC5+5d4oOYh4KvzoX8bxoAWq1bjc6zlocAr0B2W2q00D7pVNDR5
         MygrFrJqUzf/KVvyx7p8P6G+q6c6wKa3mny6swPTmfG1W1GNTJ423iUb/SPUN3jTWYwK
         YST2m9NahChI2+pF1PFczcdeGGJE7+Ze5p7gK/QxcYNceN5K7aPiR8QxQ1rWCsk1J6Af
         oWCmVY8w0OUc1YfI0xhuSbNuBBtOJY+VJJrvPoosz0j/sMEzUnBUH8yMRrfL/MisXbCc
         B4ow==
X-Forwarded-Encrypted: i=1; AJvYcCWQk0pk5LTbekWSOh3yoCYU0gGbG9A1eF1BKN2cHPTGcU6SpE4HC3WtQtv+IZJg6IXhLsUVHsZWXFhV2hKVkvTFmZnfz/8COs43Q1QHQ9F6jePIxJ0sKy16ccIqGW/E2tf81nywmFd+nDMtuX5OlW9T1YC5Tqqqs2I=
X-Gm-Message-State: AOJu0Ywyw1dEM5FaDgapQWLbH4Jorjan1wccahaOfPNAfB+XEODx6Mct
	enNw3Ccj9R+aB079wUJsJQMPQlK2JKBTFKtRpc3ESeYnIRXrbYMP
X-Google-Smtp-Source: AGHT+IH4GqU/0d7gsdYBiKVRmU9aLMUbGwBxVgsk25KKaZVkVKwGOi317RCigXKiuGA4ay6vI8dNFw==
X-Received: by 2002:a17:902:d48a:b0:1fb:7b96:8479 with SMTP id d9443c01a7336-1ff048e7348mr186196475ad.58.1722438699024;
        Wed, 31 Jul 2024 08:11:39 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ca8fd5sm121302265ad.64.2024.07.31.08.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:11:38 -0700 (PDT)
Date: Wed, 31 Jul 2024 08:11:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/8] dt-bindings: hwmon: add support for ti,amc6821
Message-ID: <c97485f0-f59a-48ce-8462-be83fd217515@roeck-us.net>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-3-f9f6d7b60fb2@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-3-f9f6d7b60fb2@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_081140_513805_D8DC25EE 
X-CRM114-Status: UNSURE (   9.15  )
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

On Thu, Jul 25, 2024 at 03:27:49PM +0200, Farouk Bouabid wrote:
> Add dt-bindings for amc6821 intelligent temperature monitor and
> pulse-width modulation (PWM) fan controller.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Applied.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
