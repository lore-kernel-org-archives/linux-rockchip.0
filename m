Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F39C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vTCK3MQvG36Qk0u0R1pDRpD1uwRI2WfCrL2OpqfhL4w=; b=dvpyzIv555NTV1
	qmRM6t5yygpurW6+0DTjpwhV8yPWoYdQ99eVyCyFEykVjPGagVmc9R9zhG9k1eAKpM2u1acuIT70y
	DMiZOyIZA6LeQG52ILaGTKZ7vVRCNQ7F49C4FbhkWvaxlNxnVAx/dSru2x7zfGhN677G3rzE4s8lv
	ftpB6jBecqexHTBwkcfy40/u1LcRurHYBddxhSiOkz+QPaftB8cbD4KFAdNMLfQs744x7JKzJ6tYu
	Cx3KJRzXIZTKjpbx0fY2eo+xOFpUw1vajf2CbdxQqISFQNAvODL1TU5zXmQpzi3YkEMCtDrkEpqDw
	/oLuB5/7VEW74AIp1AUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTS9c-00000005GmU-0ogh;
	Fri, 26 Jan 2024 19:46:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTS9a-00000005Gm5-0wEC;
	Fri, 26 Jan 2024 19:46:19 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40e76626170so12635755e9.2;
        Fri, 26 Jan 2024 11:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706298377; x=1706903177; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=42nKbvzxrhLtTO1/HhA5ZrxxRE9ibe+1064kf/7Xdy8=;
        b=JWGNKI0szKQfxeZLdBO8mQ55qDnPDlbBuX5x9ROo4plKolJZ5HJq3Uw5JfEkaxJ8IG
         mobY50EyCvH3K7z2I8Ddd7gTp6hQ3syh991GQge3Mp+iqXMzATratc9chLHG/O4KFQBf
         qnNlpOFxn3FpXn+r1tqFQDfBsYHdCR+hMVmRIvOvEeWKNwKP3cJl+RIJXQY8s+3OfS8J
         Po5mf29Dzu1VUhP9Q2goiiSzruT2JmHb5Uur6baCuAT8FJKWoYyYGCvf7DOJrwB8RnRJ
         AHTkelGsJ7y0YJMNjPNt314FsDBISdVXWbnL9lf7ZnbHM19Ute2C7J5tjdNuOjBnYniP
         oV6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706298377; x=1706903177;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=42nKbvzxrhLtTO1/HhA5ZrxxRE9ibe+1064kf/7Xdy8=;
        b=SrlLM4sLt0Q6gitDiYrfsupubNfnNzx08U8zaGiIY/5KiMQYgWopdlKYHDDWE3+Gcy
         MKg9BGvCxgaO7ke6dycRJqkoYs2c2oeTkF+SxPV+KzMgQOIfWux2jqaiRosTuV7FKGbV
         tVVD8IMADON5lCVJEDzG7XJ8vgQ+bkVHnvcn42VssJ8OaJa5EQ2SNyQw7NaKBf2SXXbH
         OLDo8498hZAWmlDH3Rj85H2zwcvVoz7E0Ccbd+nC24lz/hZMfD5tjehRgbacHjqo669n
         Q52nm9HgdZS05puXDtImRB6mDOEBXIgNH634J0yaNl5WraHF89g9hbhMFulwYvT+jOjn
         1/5A==
X-Gm-Message-State: AOJu0YxOyVcrXEMwbA996XqJzQnr2XfqL5nfZ9LX5Y0i46sHg8+bmF7g
	jfztW/byP1euh70SURmF7p7w8+tvf3KA6hYOQSD4nsgTtHpMQv3J
X-Google-Smtp-Source: AGHT+IG5ZcuFua96Ii9AFQF3yBsEPz4LeP31TI+oooY7YAJiWQgsXgZlF9VKTtO17a4vWy2D/+l6ww==
X-Received: by 2002:a05:600c:3d19:b0:40e:e945:1baa with SMTP id bh25-20020a05600c3d1900b0040ee9451baamr214623wmb.141.1706298376685;
        Fri, 26 Jan 2024 11:46:16 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id bp19-20020a5d5a93000000b003394495566dsm1917666wrb.22.2024.01.26.11.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 11:46:16 -0800 (PST)
Message-ID: <08e518f54f94b78a3985a3c9247bced5b275433b.camel@gmail.com>
Subject: [PATCH 0/3] spi: spi-rockchip: Fix of chip select lines handling
From: Luis de Arquer <ldearquer@gmail.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org,  Robin Murphy <robin.murphy@arm.com>,
 luis.dearquer@inertim.com
Date: Fri, 26 Jan 2024 20:46:05 +0100
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_114618_283179_F0457D67 
X-CRM114-Status: UNSURE (   7.07  )
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

This patch series has several fixes concerning spi-rockchip handling of chip select lines.

Probably the more important issue is an out of bounds access to an array, fixed on
the first commit of the series. The issue was found and reproduced on a downstream
kernel (orange pi 5 plus), but it seems to still be present on mainline

The patch has been made and built on linux-rockchip tree.
It will take me a few days to complete proper testing, but any comments at this point
are welcome.

Also, this is my first patch, so let me know of any side issues with patch or email
format :)

Luis de Arquer
Inertim Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
