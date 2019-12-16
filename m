From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
Date: Mon, 16 Dec 2019 15:20:16 +0530
Message-ID: <CANAwSgTL-9VCFFj-+4xsLZOxKCHtjyN4P6fYnuRSOe7cZRiWew@mail.gmail.com>
References: <cover.1575932654.git.robin.murphy@arm.com> <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
 <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com> <2681192.H4ySjFOPB8@diego>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="0000000000002e21d20599cf249e"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2681192.H4ySjFOPB8@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>, Soeren Moch <smoch@web.de>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--0000000000002e21d20599cf249e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Heiko / Robin / Soeren,

On Mon, 16 Dec 2019 at 01:57, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Anand,
>
> Am Sonntag, 15. Dezember 2019, 19:51:50 CET schrieb Anand Moon:
> > On Tue, 10 Dec 2019 at 18:54, Robin Murphy <robin.murphy@arm.com> wrote=
:
> > >
> > > RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK81=
7,
> > > so it makes little sense for the driver to have to have two completel=
y
> > > different mechanisms to handle essentially the same thing. Bring RK80=
5
> > > in line with the RK809/RK817 flow to clean things up.
> > >
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
>
> [...]
>
> > I am sill getting the kernel warning on issue poweroff see below.
> > on my Rock960 Model A
> > I feel the reason for this is we now have two poweroff callback
> > 1  pm_power_off =3D rk808_device_shutdown
> > 2  rk8xx_syscore_shutdown
>
> Nope, the issue is just the i2c subsystem complaining that the
> Rocckhip i2c drives does not provide an atomic-transfer function, see
>         "No atomic I2C transfer handler for 'i2c-0'"
> in your warning.
>
> Somewhere it was suggested that the current transfer function just
> works as atomic as well.
>
>
> > In my investigation earlier common function for shutdown solve
> > the issue of clean shutdown.
>
> This is simply a result of your syscore-shutdown function running way to
> early, before the i2c subsystem switched to using atomic transfers.
>
> This also indicates that this would really be way to early, as other part=
s
> of the kernel could also still be running.
>

Yes, you are correct syscore-shutdown initiates
shutdown before all the device do clean shutdown.

So for best approach for clean atomic shutdown is to use
  /* driver model interfaces that don't relate to enumeration  */
        void (*shutdown)(struct i2c_client *client);
drop the registration of syscore and use core .i2c_shutdown.

I have prepare this patch on top of this series for RTF
This patch dose clean shutdown of all the devices before poweroff.
see the log below.

*Note*: This feature will likely break the clean reboot feature.
Rockchip device do not perform clean reboot as some of the IP
block are not released before clean reboot and it's remain stuck.
Like PCIe and MMC, We need to look into this as well.

Shutdown log of my RK3399 Rock960 Model A
[0] https://pastebin.com/peYxmzb7
------------------------------------------------------------------------
[  OK  ] Stopped LVM2 metadata daemon.
[  OK  ] Reached target Shutdown.
[  OK  ] Reached target Final Step.
[  OK  ] Closed LVM2 metadata daemon socket.
[  OK  ] Started Power-Off.
[  OK  ] Reached target Power-Off.
[  542.715237] systemd-shutdown[1]: Syncing filesystems and block devices.
[  543.158314] systemd-shutdown[1]: Sending SIGTERM to remaining processes.=
..
[  543.168469] systemd-journald[280]: Received SIGTERM from PID 1
(systemd-shutdow).
[  543.202968] systemd-shutdown[1]: Sending SIGKILL to remaining processes.=
..
[  543.212365] systemd-shutdown[1]: Unmounting file systems.
[  543.214708] [535]: Remounting '/' read-only in with options '(null)'.
[  543.229661] EXT4-fs (mmcblk1p1): re-mounted. Opts: (null)
[  543.239978] systemd-shutdown[1]: All filesystems unmounted.
[  543.240481] systemd-shutdown[1]: Deactivating swaps.
[  543.241052] systemd-shutdown[1]: All swaps deactivated.
[  543.241514] systemd-shutdown[1]: Detaching loop devices.
[  543.244806] systemd-shutdown[1]: All loop devices detached.
[  543.245307] systemd-shutdown[1]: Detaching DM devices.
[  543.245994] systemd-shutdown[1]: All DM devices detached.
[  543.246474] systemd-shutdown[1]: All filesystems, swaps, loop
devices and DM devices detached.
[  543.302732] systemd-shutdown[1]: Successfully changed into root pivot.
[  543.303356] systemd-shutdown[1]: Returning to initrd...
[  543.339679] shutdown[1]: Syncing filesystems and block devices.
[  543.341084] shutdown[1]: Sending SIGTERM to remaining processes...
[  543.348948] shutdown[1]: Sending SIGKILL to remaining processes...
[  543.356551] shutdown[1]: Unmounting file systems.
[  543.359097] sd-umoun[541]: Unmounting '/oldroot/sys/kernel/config'.
[  543.361716] sd-umoun[542]: Unmounting '/oldroot/sys/kernel/debug'.
[  543.364333] sd-umoun[543]: Unmounting '/oldroot/dev/mqueue'.
[  543.366765] sd-umoun[544]: Unmounting '/oldroot/dev/hugepages'.
[  543.369426] sd-umoun[545]: Unmounting '/oldroot/sys/fs/cgroup/memory'.
[  543.372338] sd-umoun[546]: Unmounting '/oldroot/sys/fs/cgroup/perf_event=
'.
[  543.375030] sd-umoun[547]: Unmounting '/oldroot/sys/fs/cgroup/cpu,cpuacc=
t'.
[  543.377744] sd-umoun[548]: Unmounting '/oldroot/sys/fs/cgroup/pids'.
[  543.380620] sd-umoun[549]: Unmounting '/oldroot/sys/fs/cgroup/blkio'.
[  543.383256] sd-umoun[550]: Unmounting '/oldroot/sys/fs/cgroup/hugetlb'.
[  543.386015] sd-umoun[551]: Unmounting '/oldroot/sys/fs/cgroup/devices'.
[  543.389114] sd-umoun[552]: Unmounting '/oldroot/sys/fs/cgroup/cpuset'.
[  543.391817] sd-umoun[553]: Unmounting '/oldroot/sys/fs/pstore'.
[  543.394401] sd-umoun[554]: Unmounting '/oldroot/sys/fs/cgroup/systemd'.
[  543.397245] sd-umoun[555]: Unmounting '/oldroot/sys/fs/cgroup/unified'.
[  543.400083] sd-umoun[556]: Unmounting '/oldroot/sys/fs/cgroup'.
[  543.402654] sd-umoun[557]: Unmounting '/oldroot/dev/pts'.
[  543.405351] sd-umoun[558]: Unmounting '/oldroot/dev/shm'.
[  543.407876] sd-umoun[559]: Unmounting '/oldroot/sys/kernel/security'.
[  543.410313] sd-umoun[560]: Unmounting '/oldroot'.
[  543.410886] sd-umoun[560]: Failed to unmount /oldroot: Device or
resource busy
[  543.413355] sd-umoun[561]: Unmounting '/oldroot/run'.
[  543.415750] sd-umoun[562]: Unmounting '/oldroot/dev'.
[  543.418013] sd-umoun[563]: Unmounting '/oldroot/sys'.
[  543.420892] sd-umoun[564]: Unmounting '/oldroot/proc'.
[  543.423833] sd-umoun[565]: Unmounting '/oldroot'.
[  543.486268] shutdown[1]: All filesystems unmounted.
[  543.486710] shutdown[1]: Deactivating swaps.
[  543.487153] shutdown[1]: All swaps deactivated.
[  543.487556] shutdown[1]: Detaching loop devices.
[  543.490300] shutdown[1]: All loop devices detached.
[  543.490735] shutdown[1]: Detaching DM devices.
[  543.491382] shutdown[1]: All DM devices detached.
[  543.491801] shutdown[1]: All filesystems, swaps, loop devices and
DM devices detached.
[  543.494678] shutdown[1]: Syncing filesystems and block devices.
[  543.495770] shutdown[1]: Powering off.
[  543.496112] kvm: exiting hardware virtualization

-Anand

--0000000000002e21d20599cf249e
Content-Type: application/octet-stream; name="i2c_shutdown.patch"
Content-Disposition: attachment; filename="i2c_shutdown.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k4891t990>
X-Attachment-Id: f_k4891t990

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3JrODA4LmMgYi9kcml2ZXJzL21mZC9yazgwOC5jCmlu
ZGV4IGU4OGJkYjg4OWQzYS4uODIzODAzZGYyZDdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL21mZC9y
azgwOC5jCisrKyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKQEAgLTQ0OCwzNiArNDQ4LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfaXJxX2NoaXAgcms4MThfaXJxX2NoaXAgPSB7CiAKIHN0
YXRpYyBzdHJ1Y3QgaTJjX2NsaWVudCAqcms4MDhfaTJjX2NsaWVudDsKIAotc3RhdGljIHZvaWQg
cms4MDhfZGV2aWNlX3NodXRkb3duKHZvaWQpCi17Ci0JaW50IHJldDsKLQl1bnNpZ25lZCBpbnQg
cmVnLCBiaXQ7Ci0Jc3RydWN0IHJrODA4ICpyazgwOCA9IGkyY19nZXRfY2xpZW50ZGF0YShyazgw
OF9pMmNfY2xpZW50KTsKLQotCWlmICghcms4MDgpCi0JCXJldHVybjsKLQotCXN3aXRjaCAocms4
MDgtPnZhcmlhbnQpIHsKLQljYXNlIFJLODA1X0lEOgotCQlyZWcgPSBSSzgwNV9ERVZfQ1RSTF9S
RUc7Ci0JCWJpdCA9IERFVl9PRkY7Ci0JCWJyZWFrOwotCWNhc2UgUks4MDhfSUQ6Ci0JCXJlZyA9
IFJLODA4X0RFVkNUUkxfUkVHLAotCQliaXQgPSBERVZfT0ZGX1JTVDsKLQkJYnJlYWs7Ci0JY2Fz
ZSBSSzgxOF9JRDoKLQkJcmVnID0gUks4MThfREVWQ1RSTF9SRUc7Ci0JCWJpdCA9IERFVl9PRkY7
Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCXJldHVybjsKLQl9Ci0JcmV0ID0gcmVnbWFwX3VwZGF0
ZV9iaXRzKHJrODA4LT5yZWdtYXAsIHJlZywgYml0LCBiaXQpOwotCWlmIChyZXQpCi0JCWRldl9l
cnIoJnJrODA4X2kyY19jbGllbnQtPmRldiwgIkZhaWxlZCB0byBzaHV0ZG93biBkZXZpY2UhXG4i
KTsKLX0KLQorI2lmIDAKIHN0YXRpYyB2b2lkIHJrOHh4X3N5c2NvcmVfc2h1dGRvd24odm9pZCkK
IHsKIAlzdHJ1Y3Qgcms4MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKHJrODA4X2kyY19j
bGllbnQpOwpAQCAtNTExLDYgKzQ4Miw3IEBAIHN0YXRpYyB2b2lkIHJrOHh4X3N5c2NvcmVfc2h1
dGRvd24odm9pZCkKIHN0YXRpYyBzdHJ1Y3Qgc3lzY29yZV9vcHMgcms4MDhfc3lzY29yZV9vcHMg
PSB7CiAJLnNodXRkb3duID0gcms4eHhfc3lzY29yZV9zaHV0ZG93biwKIH07CisjZW5kaWYKIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcms4MDhfb2ZfbWF0Y2hbXSA9IHsKIAl7
IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODA1IiB9LApAQCAtNjQzLDggKzYxNSw5IEBAIHN0
YXRpYyBpbnQgcms4MDhfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKIAl9CiAKIAly
azgwOF9pMmNfY2xpZW50ID0gY2xpZW50OworI2lmIDAKIAlyZWdpc3Rlcl9zeXNjb3JlX29wcygm
cms4MDhfc3lzY29yZV9vcHMpOwotCisjZW5kaWYKIAlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNl
cygmY2xpZW50LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsCiAJCQkgICAgICBjZWxscywgbnJf
Y2VsbHMsIE5VTEwsIDAsCiAJCQkgICAgICByZWdtYXBfaXJxX2dldF9kb21haW4ocms4MDgtPmly
cV9kYXRhKSk7CkBAIC02NTMsMTMgKzYyNiwxNiBAQCBzdGF0aWMgaW50IHJrODA4X3Byb2JlKHN0
cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCiAJCWdvdG8gZXJyX2lycTsKIAl9CiAKKyNpZiAwCiAJ
aWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250
cm9sbGVyIikpCiAJCXBtX3Bvd2VyX29mZiA9IHJrODA4X2RldmljZV9zaHV0ZG93bjsKLQorI2Vu
ZGlmCiAJcmV0dXJuIDA7CiAKIGVycl9pcnE6CisjaWYgMAogCXVucmVnaXN0ZXJfc3lzY29yZV9v
cHMoJnJrODA4X3N5c2NvcmVfb3BzKTsKKyNlbmRpZgogCXJlZ21hcF9kZWxfaXJxX2NoaXAoY2xp
ZW50LT5pcnEsIHJrODA4LT5pcnFfZGF0YSk7CiAJcmV0dXJuIHJldDsKIH0KQEAgLTY3MCwxOCAr
NjQ2LDQ4IEBAIHN0YXRpYyBpbnQgcms4MDhfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGll
bnQpCiAKIAlyZWdtYXBfZGVsX2lycV9jaGlwKGNsaWVudC0+aXJxLCByazgwOC0+aXJxX2RhdGEp
OwogCisjaWYgMAogCXVucmVnaXN0ZXJfc3lzY29yZV9vcHMoJnJrODA4X3N5c2NvcmVfb3BzKTsK
LQogCS8qKgogCSAqIHBtX3Bvd2VyX29mZiBtYXkgcG9pbnRzIHRvIGEgZnVuY3Rpb24gZnJvbSBh
bm90aGVyIG1vZHVsZS4KIAkgKiBDaGVjayBpZiB0aGUgcG9pbnRlciBpcyBzZXQgYnkgdXMgYW5k
IG9ubHkgdGhlbiBvdmVyd3JpdGUgaXQuCiAJICovCiAJaWYgKHBtX3Bvd2VyX29mZiA9PSByazgw
OF9kZXZpY2Vfc2h1dGRvd24pCiAJCXBtX3Bvd2VyX29mZiA9IE5VTEw7Ci0KKyNlbmRpZgogCXJl
dHVybiAwOwogfQogCitzdGF0aWMgdm9pZCByazgwOF9zaHV0ZG93bihzdHJ1Y3QgaTJjX2NsaWVu
dCAqY2xpZW50KQoreworCWludCByZXQ7CisJdW5zaWduZWQgaW50IHJlZywgYml0OworCXN0cnVj
dCByazgwOCAqcms4MDggPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsKKworCWlmICghcms4
MDgpCisJCXJldHVybjsKKworCXN3aXRjaCAocms4MDgtPnZhcmlhbnQpIHsKKwljYXNlIFJLODA1
X0lEOgorCQlyZWcgPSBSSzgwNV9ERVZfQ1RSTF9SRUc7CisJCWJpdCA9IERFVl9PRkY7CisJCWJy
ZWFrOworCWNhc2UgUks4MDhfSUQ6CisJCXJlZyA9IFJLODA4X0RFVkNUUkxfUkVHLAorCQliaXQg
PSBERVZfT0ZGX1JTVDsKKwkJYnJlYWs7CisJY2FzZSBSSzgxOF9JRDoKKwkJcmVnID0gUks4MThf
REVWQ1RSTF9SRUc7CisJCWJpdCA9IERFVl9PRkY7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCXJl
dHVybjsKKwl9CisJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKHJrODA4LT5yZWdtYXAsIHJlZywg
Yml0LCBiaXQpOworCWlmIChyZXQpCisJCWRldl9lcnIoJnJrODA4X2kyY19jbGllbnQtPmRldiwg
IkZhaWxlZCB0byBzaHV0ZG93biBkZXZpY2UhXG4iKTsKK30KKwogc3RhdGljIGludCBfX21heWJl
X3VudXNlZCByazh4eF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3Qgcms4
MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKHJrODA4X2kyY19jbGllbnQpOwpAQCAtNzM3
LDYgKzc0Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciByazgwOF9pMmNfZHJpdmVyID0g
ewogCX0sCiAJLnByb2JlICAgID0gcms4MDhfcHJvYmUsCiAJLnJlbW92ZSAgID0gcms4MDhfcmVt
b3ZlLAorCS5zaHV0ZG93biAgPSByazgwOF9zaHV0ZG93biwKIH07CiAKIG1vZHVsZV9pMmNfZHJp
dmVyKHJrODA4X2kyY19kcml2ZXIpOwo=
--0000000000002e21d20599cf249e--
